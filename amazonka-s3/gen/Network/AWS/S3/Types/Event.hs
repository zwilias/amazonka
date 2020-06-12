{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Event
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Event where

import Network.AWS.Prelude
import Network.AWS.S3.Internal
  
-- | Bucket event for which to send notifications.
data Event = S3ObjectCreated
           | S3ObjectCreatedCompleteMultipartUpload
           | S3ObjectCreatedCopy
           | S3ObjectCreatedPost
           | S3ObjectCreatedPut
           | S3ObjectRemoved
           | S3ObjectRemovedDelete
           | S3ObjectRemovedDeleteMarkerCreated
           | S3ReducedRedundancyLostObject
               deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                         Typeable, Generic)

instance FromText Event where
    parser = takeLowerText >>= \case
        "s3:objectcreated:*" -> pure S3ObjectCreated
        "s3:objectcreated:completemultipartupload" -> pure S3ObjectCreatedCompleteMultipartUpload
        "s3:objectcreated:copy" -> pure S3ObjectCreatedCopy
        "s3:objectcreated:post" -> pure S3ObjectCreatedPost
        "s3:objectcreated:put" -> pure S3ObjectCreatedPut
        "s3:objectremoved:*" -> pure S3ObjectRemoved
        "s3:objectremoved:delete" -> pure S3ObjectRemovedDelete
        "s3:objectremoved:deletemarkercreated" -> pure S3ObjectRemovedDeleteMarkerCreated
        "s3:reducedredundancylostobject" -> pure S3ReducedRedundancyLostObject
        e -> fromTextError $ "Failure parsing Event from value: '" <> e
           <> "'. Accepted values: s3:objectcreated:*, s3:objectcreated:completemultipartupload, s3:objectcreated:copy, s3:objectcreated:post, s3:objectcreated:put, s3:objectremoved:*, s3:objectremoved:delete, s3:objectremoved:deletemarkercreated, s3:reducedredundancylostobject"

instance ToText Event where
    toText = \case
        S3ObjectCreated -> "s3:ObjectCreated:*"
        S3ObjectCreatedCompleteMultipartUpload -> "s3:ObjectCreated:CompleteMultipartUpload"
        S3ObjectCreatedCopy -> "s3:ObjectCreated:Copy"
        S3ObjectCreatedPost -> "s3:ObjectCreated:Post"
        S3ObjectCreatedPut -> "s3:ObjectCreated:Put"
        S3ObjectRemoved -> "s3:ObjectRemoved:*"
        S3ObjectRemovedDelete -> "s3:ObjectRemoved:Delete"
        S3ObjectRemovedDeleteMarkerCreated -> "s3:ObjectRemoved:DeleteMarkerCreated"
        S3ReducedRedundancyLostObject -> "s3:ReducedRedundancyLostObject"

instance Hashable     Event
instance NFData       Event
instance ToByteString Event
instance ToQuery      Event
instance ToHeader     Event

instance FromXML Event where
    parseXML = parseXMLText "Event"

instance ToXML Event where
    toXML = toXMLText
