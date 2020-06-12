{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.AliasConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.AliasConfiguration where

import Network.AWS.Lambda.Types.AliasRoutingConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides configuration information about a Lambda function version alias.
--
--
--
-- /See:/ 'aliasConfiguration' smart constructor.
data AliasConfiguration = AliasConfiguration'{_acRoutingConfig
                                              ::
                                              !(Maybe
                                                  AliasRoutingConfiguration),
                                              _acName :: !(Maybe Text),
                                              _acFunctionVersion ::
                                              !(Maybe Text),
                                              _acAliasARN :: !(Maybe Text),
                                              _acDescription :: !(Maybe Text),
                                              _acRevisionId :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AliasConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acRoutingConfig' - Specifies an additional function versions the alias points to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see 'lambda-traffic-shifting-using-aliases' .
--
-- * 'acName' - Alias name.
--
-- * 'acFunctionVersion' - Function version to which the alias points.
--
-- * 'acAliasARN' - Lambda function ARN that is qualified using the alias name as the suffix. For example, if you create an alias called @BETA@ that points to a helloworld function version, the ARN is @arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA@ .
--
-- * 'acDescription' - Alias description.
--
-- * 'acRevisionId' - Represents the latest updated revision of the function or alias.
aliasConfiguration
    :: AliasConfiguration
aliasConfiguration
  = AliasConfiguration'{_acRoutingConfig = Nothing,
                        _acName = Nothing, _acFunctionVersion = Nothing,
                        _acAliasARN = Nothing, _acDescription = Nothing,
                        _acRevisionId = Nothing}

-- | Specifies an additional function versions the alias points to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see 'lambda-traffic-shifting-using-aliases' .
acRoutingConfig :: Lens' AliasConfiguration (Maybe AliasRoutingConfiguration)
acRoutingConfig = lens _acRoutingConfig (\ s a -> s{_acRoutingConfig = a})

-- | Alias name.
acName :: Lens' AliasConfiguration (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | Function version to which the alias points.
acFunctionVersion :: Lens' AliasConfiguration (Maybe Text)
acFunctionVersion = lens _acFunctionVersion (\ s a -> s{_acFunctionVersion = a})

-- | Lambda function ARN that is qualified using the alias name as the suffix. For example, if you create an alias called @BETA@ that points to a helloworld function version, the ARN is @arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA@ .
acAliasARN :: Lens' AliasConfiguration (Maybe Text)
acAliasARN = lens _acAliasARN (\ s a -> s{_acAliasARN = a})

-- | Alias description.
acDescription :: Lens' AliasConfiguration (Maybe Text)
acDescription = lens _acDescription (\ s a -> s{_acDescription = a})

-- | Represents the latest updated revision of the function or alias.
acRevisionId :: Lens' AliasConfiguration (Maybe Text)
acRevisionId = lens _acRevisionId (\ s a -> s{_acRevisionId = a})

instance FromJSON AliasConfiguration where
        parseJSON
          = withObject "AliasConfiguration"
              (\ x ->
                 AliasConfiguration' <$>
                   (x .:? "RoutingConfig") <*> (x .:? "Name") <*>
                     (x .:? "FunctionVersion")
                     <*> (x .:? "AliasArn")
                     <*> (x .:? "Description")
                     <*> (x .:? "RevisionId"))

instance Hashable AliasConfiguration where

instance NFData AliasConfiguration where
