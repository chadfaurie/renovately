/* eslint-disable @typescript-eslint/no-explicit-any */
/* eslint-disable @typescript-eslint/no-unused-vars */
// in addUploadFeature.js

import { nanoid } from "nanoid";
import { DataProvider, withLifecycleCallbacks } from "react-admin";

import { supabaseClient } from ".";

/**
 * For posts update only, convert uploaded image in base 64 and attach it to
 * the `picture` sent property, with `src` and `title` attributes.
 */
export const addUploadFeature = (requestHandler: DataProvider) => {
  // for other request types and resources, fall back to the default request handler
  return withLifecycleCallbacks(requestHandler, [
    {
      /**
       * For posts update only, convert uploaded images to base 64 and attach them to
       * the `picture` sent property, with `src` and `title` attributes.
       */
      resource: "progress_update_images",

      beforeCreate: async (params: any, _dataProvider: DataProvider) => {
        console.log(params);

        const image = params?.data.image_url?.rawFile;

        if (image instanceof File) {
          const store = supabaseClient.storage.from("progress_update_images");

          const q = await supabaseClient.auth.getSession();
          const uid = q.data.session?.user?.id;
          const ext = image.name.split(".").pop();

          const res = await store.upload(`${uid}/${nanoid()}.${ext}`, image);

          const { data } = store.getPublicUrl(res.data?.path ?? "");

          return {
            ...params,
            data: {
              ...params.data,
              image_url: data.publicUrl,
            },
          };
        }

        return {
          ...params,
          data: {
            ...params.data,
            // pictures,
          },
        };
      },
      //   beforeUpdate: async (params: any, dataProvider: DataProvider) => {
      //     console.log(params);

      //     // Freshly dropped pictures are File objects and must be converted to base64 strings
      //     const newPictures = params.data.pictures.filter(
      //       (p) => p.rawFile instanceof File
      //     );
      //     const formerPictures = params.data.pictures.filter(
      //       (p) => !(p.rawFile instanceof File)
      //     );

      //     const base64Pictures = await Promise.all(
      //       newPictures.map(convertFileToBase64)
      //     );

      //     const pictures = [
      //       ...base64Pictures.map((dataUrl, index) => ({
      //         src: dataUrl,
      //         title: newPictures[index].name,
      //       })),
      //       ...formerPictures,
      //     ];

      //     return {
      //       ...params,
      //       data: {
      //         ...params.data,
      //         pictures,
      //       },
      //     };
      //   },
    },
  ]); // requestHandler(type, resource, params);
};
