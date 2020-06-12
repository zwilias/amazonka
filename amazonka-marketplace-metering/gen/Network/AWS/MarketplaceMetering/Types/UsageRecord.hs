{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceMetering.Types.UsageRecord
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MarketplaceMetering.Types.UsageRecord where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.
--
--
-- Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.
--
--
-- /See:/ 'usageRecord' smart constructor.
data UsageRecord = UsageRecord'{_urTimestamp ::
                                !POSIX,
                                _urCustomerIdentifier :: !Text,
                                _urDimension :: !Text, _urQuantity :: !Nat}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsageRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urTimestamp' - Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored. Your application can meter usage for up to one hour in the past.
--
-- * 'urCustomerIdentifier' - The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
--
-- * 'urDimension' - During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
--
-- * 'urQuantity' - The quantity of usage consumed by the customer for the given dimension and time.
usageRecord
    :: UTCTime -- ^ 'urTimestamp'
    -> Text -- ^ 'urCustomerIdentifier'
    -> Text -- ^ 'urDimension'
    -> Natural -- ^ 'urQuantity'
    -> UsageRecord
usageRecord pTimestamp_ pCustomerIdentifier_
  pDimension_ pQuantity_
  = UsageRecord'{_urTimestamp = _Time # pTimestamp_,
                 _urCustomerIdentifier = pCustomerIdentifier_,
                 _urDimension = pDimension_,
                 _urQuantity = _Nat # pQuantity_}

-- | Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored. Your application can meter usage for up to one hour in the past.
urTimestamp :: Lens' UsageRecord UTCTime
urTimestamp = lens _urTimestamp (\ s a -> s{_urTimestamp = a}) . _Time

-- | The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
urCustomerIdentifier :: Lens' UsageRecord Text
urCustomerIdentifier = lens _urCustomerIdentifier (\ s a -> s{_urCustomerIdentifier = a})

-- | During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
urDimension :: Lens' UsageRecord Text
urDimension = lens _urDimension (\ s a -> s{_urDimension = a})

-- | The quantity of usage consumed by the customer for the given dimension and time.
urQuantity :: Lens' UsageRecord Natural
urQuantity = lens _urQuantity (\ s a -> s{_urQuantity = a}) . _Nat

instance FromJSON UsageRecord where
        parseJSON
          = withObject "UsageRecord"
              (\ x ->
                 UsageRecord' <$>
                   (x .: "Timestamp") <*> (x .: "CustomerIdentifier")
                     <*> (x .: "Dimension")
                     <*> (x .: "Quantity"))

instance Hashable UsageRecord where

instance NFData UsageRecord where

instance ToJSON UsageRecord where
        toJSON UsageRecord'{..}
          = object
              (catMaybes
                 [Just ("Timestamp" .= _urTimestamp),
                  Just ("CustomerIdentifier" .= _urCustomerIdentifier),
                  Just ("Dimension" .= _urDimension),
                  Just ("Quantity" .= _urQuantity)])
