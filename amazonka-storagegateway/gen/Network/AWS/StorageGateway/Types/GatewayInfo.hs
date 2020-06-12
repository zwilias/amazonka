{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.GatewayInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.GatewayInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a gateway object.
--
--
--
-- /See:/ 'gatewayInfo' smart constructor.
data GatewayInfo = GatewayInfo'{_giGatewayARN ::
                                !(Maybe Text),
                                _giGatewayOperationalState :: !(Maybe Text),
                                _giGatewayName :: !(Maybe Text),
                                _giGatewayId :: !(Maybe Text),
                                _giGatewayType :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GatewayInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giGatewayARN' - The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and region.
--
-- * 'giGatewayOperationalState' - The state of the gateway. Valid Values: DISABLED or ACTIVE
--
-- * 'giGatewayName' - The name of the gateway.
--
-- * 'giGatewayId' - The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
--
-- * 'giGatewayType' - The type of the gateway.
gatewayInfo
    :: GatewayInfo
gatewayInfo
  = GatewayInfo'{_giGatewayARN = Nothing,
                 _giGatewayOperationalState = Nothing,
                 _giGatewayName = Nothing, _giGatewayId = Nothing,
                 _giGatewayType = Nothing}

-- | The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and region.
giGatewayARN :: Lens' GatewayInfo (Maybe Text)
giGatewayARN = lens _giGatewayARN (\ s a -> s{_giGatewayARN = a})

-- | The state of the gateway. Valid Values: DISABLED or ACTIVE
giGatewayOperationalState :: Lens' GatewayInfo (Maybe Text)
giGatewayOperationalState = lens _giGatewayOperationalState (\ s a -> s{_giGatewayOperationalState = a})

-- | The name of the gateway.
giGatewayName :: Lens' GatewayInfo (Maybe Text)
giGatewayName = lens _giGatewayName (\ s a -> s{_giGatewayName = a})

-- | The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
giGatewayId :: Lens' GatewayInfo (Maybe Text)
giGatewayId = lens _giGatewayId (\ s a -> s{_giGatewayId = a})

-- | The type of the gateway.
giGatewayType :: Lens' GatewayInfo (Maybe Text)
giGatewayType = lens _giGatewayType (\ s a -> s{_giGatewayType = a})

instance FromJSON GatewayInfo where
        parseJSON
          = withObject "GatewayInfo"
              (\ x ->
                 GatewayInfo' <$>
                   (x .:? "GatewayARN") <*>
                     (x .:? "GatewayOperationalState")
                     <*> (x .:? "GatewayName")
                     <*> (x .:? "GatewayId")
                     <*> (x .:? "GatewayType"))

instance Hashable GatewayInfo where

instance NFData GatewayInfo where
