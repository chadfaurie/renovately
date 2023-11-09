import { Suspense, lazy } from "react";
import { Loading } from "react-admin";
import "./monitors";

const MyAdmin = lazy(() => import("./Admin"));

export const MyApp = () => {
  return (
    <Suspense fallback={<Loading sx={{ height: "100%" }} />}>
      <MyAdmin />
    </Suspense>
  );
};
