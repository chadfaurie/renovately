import { Layout, LayoutProps } from "react-admin";

import { Error } from "./Error";

const MyLayout = (props: LayoutProps) => {
  return <Layout {...props} error={Error} />;
};

export default MyLayout;
