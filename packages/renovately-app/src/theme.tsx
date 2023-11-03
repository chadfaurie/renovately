import { nanoLightTheme } from "react-admin";
import { Theme } from "@mui/material";
import merge from "lodash.merge";

export const theme: Theme = merge(nanoLightTheme, {
  components: {
    MuiInput: {
      defaultProps: {
        fullWidth: true,
      },
    },
    MuiTextField: {
      defaultProps: {
        fullWidth: true,
      },
    },
  },
});
