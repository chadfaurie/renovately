import merge from "lodash/merge";
import polyglotI18nProvider from "ra-i18n-polyglot";
import en from "ra-language-english";
import { TranslationMessages } from "react-admin";

type RecursivePartial<T> = {
  [P in keyof T]?: T[P] extends (infer U)[]
    ? RecursivePartial<U>[]
    : T[P] extends object | undefined
    ? RecursivePartial<T[P]>
    : T[P];
};

const englishMessages: RecursivePartial<TranslationMessages> = {
  // react-admin components
  //   ra: {
  //     action: {
  //       cancel: "Cancel",
  //       clone: "Clone",
  //       confirm: "Confirm",
  //       create: "Create",
  //       delete: "Delete",
  //       edit: "Edit",
  //       export: "Export",
  //       list: "List",
  //       refresh: "Refresh",
  //       save: "Save",
  //     },
  //     boolean: {
  //       true: "Yes",
  //       false: "No",
  //       null: " ",
  //     },
  //     /* ...*/
  //   },
  // resources and fields
  resources: {
    progress: {
      name: "Progress |||| Progress",
      fields: {
        // model: "Model",
        // stock: "Nb in stock",
        // color: "Color",
      },
    },
  },
  // custom components
  acme: {
    buttons: {
      allow: "Allow",
      deny: "Deny",
    },
    notifications: {
      error: "An error occurred",
      success: "Success",
    },
    /* ...*/
  },
};

const translations: Record<string, TranslationMessages> = { en: merge(en, englishMessages) };

export const i18nProvider = polyglotI18nProvider(
  (locale) => translations[locale],
  "en", // default locale
  [{ locale: "en", name: "English" }],
);
