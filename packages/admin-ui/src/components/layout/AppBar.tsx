import ProfileIcon from "@mui/icons-material/Person2Outlined";
import Divider from "@mui/material/Divider";
import ListItemIcon from "@mui/material/ListItemIcon";
import ListItemText from "@mui/material/ListItemText";
import MenuItem from "@mui/material/MenuItem";
import Typography from "@mui/material/Typography";
import { AppBar, AppBarProps, Logout, TitlePortal, UserMenu, useAuthProvider, useTranslate } from "react-admin";
import { Link } from "react-router-dom";

const MyUserMenu = () => {
  const authProvider = useAuthProvider();
  const translate = useTranslate();

  return (
    <UserMenu>
      <MenuItem component={Link} to="myProfile">
        <ListItemIcon>{<ProfileIcon fontSize="small" />}</ListItemIcon>
        <ListItemText>{translate("ra.auth.user", { _: "Profile" })}</ListItemText>
      </MenuItem>
      <Divider />
      {authProvider ? <Logout /> : null}
    </UserMenu>
  );
};

const MyAppBar = (props: AppBarProps) => {
  return (
    <AppBar {...props} userMenu={<MyUserMenu />}>
      <TitlePortal />

      <Typography variant="h6" id="react-admin-title" flex="1">
        Renovately Admin
      </Typography>
    </AppBar>
  );
};

export default MyAppBar;
