{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.RequestPayer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.RequestPayer where

import Network.AWS.Prelude
import Network.AWS.S3.Internal
  
-- | Confirms that the requester knows that she or he will be charged for the request. Bucket owners need not specify this parameter in their requests. Documentation on downloading objects from requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
data RequestPayer = RPRequester
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText RequestPayer where
    parser = takeLowerText >>= \case
        "requester" -> pure RPRequester
        e -> fromTextError $ "Failure parsing RequestPayer from value: '" <> e
           <> "'. Accepted values: requester"

instance ToText RequestPayer where
    toText = \case
        RPRequester -> "requester"

instance Hashable     RequestPayer
instance NFData       RequestPayer
instance ToByteString RequestPayer
instance ToQuery      RequestPayer
instance ToHeader     RequestPayer

instance ToXML RequestPayer where
    toXML = toXMLText
