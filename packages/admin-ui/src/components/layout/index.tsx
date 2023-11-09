import { Layout, LayoutProps } from "react-admin";

import MyAppBar from "./AppBar";
import { Error } from "./Error";

const MyLayout = (props: LayoutProps) => {
  return <Layout {...props} error={Error} appBar={MyAppBar} />;
};

export default MyLayout;
