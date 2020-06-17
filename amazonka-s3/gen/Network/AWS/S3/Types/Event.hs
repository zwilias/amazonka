{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.S3.Types.Event (
  Event (
    ..
    , S3ObjectCreated
    , S3ObjectCreatedCompleteMultipartUpload
    , S3ObjectCreatedCopy
    , S3ObjectCreatedPost
    , S3ObjectCreatedPut
    , S3ObjectRemoved
    , S3ObjectRemovedDelete
    , S3ObjectRemovedDeleteMarkerCreated
    , S3ReducedRedundancyLostObject
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Bucket event for which to send notifications.
data Event = Event' (CI Text)
               deriving (Eq, Ord, Read, Show, Data, Typeable,
                         Generic)

pattern S3ObjectCreated :: Event
pattern S3ObjectCreated = Event' "s3:ObjectCreated:*"

pattern S3ObjectCreatedCompleteMultipartUpload :: Event
pattern S3ObjectCreatedCompleteMultipartUpload = Event' "s3:ObjectCreated:CompleteMultipartUpload"

pattern S3ObjectCreatedCopy :: Event
pattern S3ObjectCreatedCopy = Event' "s3:ObjectCreated:Copy"

pattern S3ObjectCreatedPost :: Event
pattern S3ObjectCreatedPost = Event' "s3:ObjectCreated:Post"

pattern S3ObjectCreatedPut :: Event
pattern S3ObjectCreatedPut = Event' "s3:ObjectCreated:Put"

pattern S3ObjectRemoved :: Event
pattern S3ObjectRemoved = Event' "s3:ObjectRemoved:*"

pattern S3ObjectRemovedDelete :: Event
pattern S3ObjectRemovedDelete = Event' "s3:ObjectRemoved:Delete"

pattern S3ObjectRemovedDeleteMarkerCreated :: Event
pattern S3ObjectRemovedDeleteMarkerCreated = Event' "s3:ObjectRemoved:DeleteMarkerCreated"

pattern S3ReducedRedundancyLostObject :: Event
pattern S3ReducedRedundancyLostObject = Event' "s3:ReducedRedundancyLostObject"

{-# COMPLETE
  S3ObjectCreated,
  S3ObjectCreatedCompleteMultipartUpload,
  S3ObjectCreatedCopy,
  S3ObjectCreatedPost,
  S3ObjectCreatedPut,
  S3ObjectRemoved,
  S3ObjectRemovedDelete,
  S3ObjectRemovedDeleteMarkerCreated,
  S3ReducedRedundancyLostObject,
  Event' #-}

instance FromText Event where
    parser = (Event' . mk) <$> takeText

instance ToText Event where
    toText (Event' ci) = original ci

-- | Represents an enum of /known/ $Event.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum Event where
    toEnum i = case i of
        0 -> S3ObjectCreated
        1 -> S3ObjectCreatedCompleteMultipartUpload
        2 -> S3ObjectCreatedCopy
        3 -> S3ObjectCreatedPost
        4 -> S3ObjectCreatedPut
        5 -> S3ObjectRemoved
        6 -> S3ObjectRemovedDelete
        7 -> S3ObjectRemovedDeleteMarkerCreated
        8 -> S3ReducedRedundancyLostObject
        _ -> (error . showText) $ "Unknown index for Event: " <> toText i
    fromEnum x = case x of
        S3ObjectCreated -> 0
        S3ObjectCreatedCompleteMultipartUpload -> 1
        S3ObjectCreatedCopy -> 2
        S3ObjectCreatedPost -> 3
        S3ObjectCreatedPut -> 4
        S3ObjectRemoved -> 5
        S3ObjectRemovedDelete -> 6
        S3ObjectRemovedDeleteMarkerCreated -> 7
        S3ReducedRedundancyLostObject -> 8
        Event' name -> (error . showText) $ "Unknown Event: " <> original name

-- | Represents the bounds of /known/ $Event.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded Event where
    minBound = S3ObjectCreated
    maxBound = S3ReducedRedundancyLostObject

instance Hashable     Event
instance NFData       Event
instance ToByteString Event
instance ToQuery      Event
instance ToHeader     Event

instance FromXML Event where
    parseXML = parseXMLText "Event"

instance ToXML Event where
    toXML = toXMLText
