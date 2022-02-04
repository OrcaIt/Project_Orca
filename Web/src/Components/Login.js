import React from "react";
import awsconfig from "../aws-exports";
import Amplify from "aws-amplify";
import { withAuthenticator, AmplifySignOut } from "@aws-amplify/ui-react";

Amplify.configure(awsconfig);

class Drive extends React.Component
{
    render()
    {
        return(
            <div>
                <AmplifySignOut/>
            </div>
        );
    }
}

export default withAuthenticator(Drive);