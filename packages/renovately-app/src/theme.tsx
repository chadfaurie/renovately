import { nanoLightTheme } from "react-admin";
import { Theme } from "@mui/material";
import merge from "lodash.merge";

const overrides: Partial<Theme> = {
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
    MuiChip: {
      defaultProps: {
        size: "small",
      },
    },
  },
};

export const theme: Theme = merge(nanoLightTheme, overrides);
