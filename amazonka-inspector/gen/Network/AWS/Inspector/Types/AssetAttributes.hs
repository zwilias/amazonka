{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssetAttributes
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Inspector.Types.AssetAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A collection of attributes of the host from which the finding is generated.
--
--
--
-- /See:/ 'assetAttributes' smart constructor.
data AssetAttributes = AssetAttributes'{_aaHostname
                                        :: !(Maybe Text),
                                        _aaAutoScalingGroup :: !(Maybe Text),
                                        _aaIpv4Addresses :: !(Maybe [Text]),
                                        _aaAgentId :: !(Maybe Text),
                                        _aaAmiId :: !(Maybe Text),
                                        _aaSchemaVersion :: !Nat}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssetAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaHostname' - The hostname of the EC2 instance where the finding is generated.
--
-- * 'aaAutoScalingGroup' - The Auto Scaling group of the EC2 instance where the finding is generated.
--
-- * 'aaIpv4Addresses' - The list of IP v4 addresses of the EC2 instance where the finding is generated.
--
-- * 'aaAgentId' - The ID of the agent that is installed on the EC2 instance where the finding is generated.
--
-- * 'aaAmiId' - The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where the finding is generated.
--
-- * 'aaSchemaVersion' - The schema version of this data type.
assetAttributes
    :: Natural -- ^ 'aaSchemaVersion'
    -> AssetAttributes
assetAttributes pSchemaVersion_
  = AssetAttributes'{_aaHostname = Nothing,
                     _aaAutoScalingGroup = Nothing,
                     _aaIpv4Addresses = Nothing, _aaAgentId = Nothing,
                     _aaAmiId = Nothing,
                     _aaSchemaVersion = _Nat # pSchemaVersion_}

-- | The hostname of the EC2 instance where the finding is generated.
aaHostname :: Lens' AssetAttributes (Maybe Text)
aaHostname = lens _aaHostname (\ s a -> s{_aaHostname = a})

-- | The Auto Scaling group of the EC2 instance where the finding is generated.
aaAutoScalingGroup :: Lens' AssetAttributes (Maybe Text)
aaAutoScalingGroup = lens _aaAutoScalingGroup (\ s a -> s{_aaAutoScalingGroup = a})

-- | The list of IP v4 addresses of the EC2 instance where the finding is generated.
aaIpv4Addresses :: Lens' AssetAttributes [Text]
aaIpv4Addresses = lens _aaIpv4Addresses (\ s a -> s{_aaIpv4Addresses = a}) . _Default . _Coerce

-- | The ID of the agent that is installed on the EC2 instance where the finding is generated.
aaAgentId :: Lens' AssetAttributes (Maybe Text)
aaAgentId = lens _aaAgentId (\ s a -> s{_aaAgentId = a})

-- | The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where the finding is generated.
aaAmiId :: Lens' AssetAttributes (Maybe Text)
aaAmiId = lens _aaAmiId (\ s a -> s{_aaAmiId = a})

-- | The schema version of this data type.
aaSchemaVersion :: Lens' AssetAttributes Natural
aaSchemaVersion = lens _aaSchemaVersion (\ s a -> s{_aaSchemaVersion = a}) . _Nat

instance FromJSON AssetAttributes where
        parseJSON
          = withObject "AssetAttributes"
              (\ x ->
                 AssetAttributes' <$>
                   (x .:? "hostname") <*> (x .:? "autoScalingGroup") <*>
                     (x .:? "ipv4Addresses" .!= mempty)
                     <*> (x .:? "agentId")
                     <*> (x .:? "amiId")
                     <*> (x .: "schemaVersion"))

instance Hashable AssetAttributes where

instance NFData AssetAttributes where
