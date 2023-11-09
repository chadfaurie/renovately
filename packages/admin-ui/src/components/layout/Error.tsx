import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import History from "@mui/icons-material/History";
import ErrorIcon from "@mui/icons-material/Report";
import { Button, Accordion, AccordionDetails, AccordionSummary, Typography } from "@mui/material";
import { styled } from "@mui/material/styles";
import * as Sentry from "@sentry/react";
import { useTranslate } from "ra-core";
import { Fragment, useLayoutEffect } from "react";
import { Title, ErrorProps } from "react-admin";

export const Error = (props: ErrorProps & { className?: string }) => {
  const { error, errorInfo, title, className, ...rest } = props;

  const translate = useTranslate();

  useLayoutEffect(() => {
    Sentry.captureException(error, { contexts: { react: { componentStack: errorInfo?.componentStack } } });
  }, [error, errorInfo]);

  return (
    <Fragment>
      {title && <Title title={title} />}
      <Root className={className} {...rest}>
        <h1 className={ErrorClasses.title} role="alert">
          <ErrorIcon className={ErrorClasses.icon} />
          {translate("ra.page.error")}
        </h1>
        <div>{translate("ra.message.error")}</div>
        {process.env.NODE_ENV !== "production" && (
          <>
            <Accordion className={ErrorClasses.panel}>
              <AccordionSummary expandIcon={<ExpandMoreIcon />} className={ErrorClasses.panelSumary}>
                {translate(error.message, {
                  _: error.message,
                })}
              </AccordionSummary>
              <AccordionDetails className={ErrorClasses.panelDetails}>
                {/*
                                    error message is repeated here to allow users to copy it. AccordionSummary doesn't support text selection.
                                */}
                <p>
                  {translate(error.message, {
                    _: error.message,
                  })}
                </p>
                <p>{errorInfo?.componentStack}</p>
              </AccordionDetails>
            </Accordion>

            <div className={ErrorClasses.advice}>
              <Typography align="center">Need help with this error? Try the following:</Typography>
              <Typography component="div">
                <ul>
                  <li>
                    Check the <a href="https://marmelab.com/react-admin/Readme.html">react-admin documentation</a>
                  </li>
                  <li>
                    Search on <a href="https://stackoverflow.com/questions/tagged/react-admin">StackOverflow</a> for
                    community answers
                  </li>
                  <li>
                    Get help from the core team via{" "}
                    <a href="https://marmelab.com/ra-enterprise/#fromsww">react-admin Enterprise Edition</a>
                  </li>
                </ul>
              </Typography>
            </div>
          </>
        )}
        <div className={ErrorClasses.toolbar}>
          <Button variant="contained" startIcon={<History />} onClick={goBack}>
            {translate("ra.action.back")}
          </Button>
        </div>
      </Root>
    </Fragment>
  );
};

const PREFIX = "RaError";

const ErrorClasses = {
  container: `${PREFIX}-container`,
  title: `${PREFIX}-title`,
  icon: `${PREFIX}-icon`,
  panel: `${PREFIX}-panel`,
  panelSumary: `${PREFIX}-panelSumary`,
  panelDetails: `${PREFIX}-panelDetails`,
  toolbar: `${PREFIX}-toolbar`,
  advice: `${PREFIX}-advice`,
};

const Root = styled("div", {
  name: PREFIX,
  overridesResolver: (props, styles) => styles.root,
})(({ theme }) => ({
  display: "flex",
  flexDirection: "column",
  alignItems: "center",
  justifyContent: "center",
  [theme.breakpoints.down("md")]: {
    padding: "1em",
  },
  fontFamily: "Roboto, sans-serif",
  opacity: 0.5,

  [`& .${ErrorClasses.title}`]: {
    display: "flex",
    alignItems: "center",
  },

  [`& .${ErrorClasses.icon}`]: {
    width: "2em",
    height: "2em",
    marginRight: "0.5em",
  },

  [`& .${ErrorClasses.panel}`]: {
    marginTop: "1em",
    maxWidth: "60em",
  },

  [`& .${ErrorClasses.panelSumary}`]: {
    userSelect: "all",
  },

  [`& .${ErrorClasses.panelDetails}`]: {
    whiteSpace: "pre-wrap",
  },

  [`& .${ErrorClasses.toolbar}`]: {
    marginTop: "2em",
  },

  [`& .${ErrorClasses.advice}`]: {
    marginTop: "2em",
  },
}));

function goBack() {
  window.history.go(-1);
}
