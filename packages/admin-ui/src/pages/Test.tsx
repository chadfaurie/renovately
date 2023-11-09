import { useLayoutEffect } from "react";

const Test = () => {
  useLayoutEffect(() => {
    throw new Error("TEST ERROR");
  });

  return <div>Test</div>;
};

export default Test;
