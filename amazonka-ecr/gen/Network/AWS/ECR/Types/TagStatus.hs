{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.TagStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECR.Types.TagStatus (
  TagStatus (
    ..
    , Tagged
    , Untagged
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TagStatus = TagStatus' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern Tagged :: TagStatus
pattern Tagged = TagStatus' "TAGGED"

pattern Untagged :: TagStatus
pattern Untagged = TagStatus' "UNTAGGED"

{-# COMPLETE
  Tagged,
  Untagged,
  TagStatus' #-}

instance FromText TagStatus where
    parser = (TagStatus' . mk) <$> takeText

instance ToText TagStatus where
    toText (TagStatus' ci) = original ci

-- | Represents an enum of /known/ $TagStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum TagStatus where
    toEnum i = case i of
        0 -> Tagged
        1 -> Untagged
        _ -> (error . showText) $ "Unknown index for TagStatus: " <> toText i
    fromEnum x = case x of
        Tagged -> 0
        Untagged -> 1
        TagStatus' name -> (error . showText) $ "Unknown TagStatus: " <> original name

-- | Represents the bounds of /known/ $TagStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded TagStatus where
    minBound = Tagged
    maxBound = Untagged

instance Hashable     TagStatus
instance NFData       TagStatus
instance ToByteString TagStatus
instance ToQuery      TagStatus
instance ToHeader     TagStatus

instance ToJSON TagStatus where
    toJSON = toJSONText
