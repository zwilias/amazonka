{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentCreator
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeDeploy.Types.DeploymentCreator where

import Network.AWS.Prelude
  
data DeploymentCreator = Autoscaling
                       | CodeDeployRollback
                       | User
                           deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                     Typeable, Generic)

instance FromText DeploymentCreator where
    parser = takeLowerText >>= \case
        "autoscaling" -> pure Autoscaling
        "codedeployrollback" -> pure CodeDeployRollback
        "user" -> pure User
        e -> fromTextError $ "Failure parsing DeploymentCreator from value: '" <> e
           <> "'. Accepted values: autoscaling, codedeployrollback, user"

instance ToText DeploymentCreator where
    toText = \case
        Autoscaling -> "autoscaling"
        CodeDeployRollback -> "codeDeployRollback"
        User -> "user"

instance Hashable     DeploymentCreator
instance NFData       DeploymentCreator
instance ToByteString DeploymentCreator
instance ToQuery      DeploymentCreator
instance ToHeader     DeploymentCreator

instance FromJSON DeploymentCreator where
    parseJSON = parseJSONText "DeploymentCreator"
