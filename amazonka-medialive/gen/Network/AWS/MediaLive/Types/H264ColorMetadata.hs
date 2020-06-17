{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ColorMetadata
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264ColorMetadata (
  H264ColorMetadata (
    ..
    , Ignore
    , Insert
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for H264ColorMetadata
data H264ColorMetadata = H264ColorMetadata' (CI Text)
                           deriving (Eq, Ord, Read, Show, Data, Typeable,
                                     Generic)

pattern Ignore :: H264ColorMetadata
pattern Ignore = H264ColorMetadata' "IGNORE"

pattern Insert :: H264ColorMetadata
pattern Insert = H264ColorMetadata' "INSERT"

{-# COMPLETE
  Ignore,
  Insert,
  H264ColorMetadata' #-}

instance FromText H264ColorMetadata where
    parser = (H264ColorMetadata' . mk) <$> takeText

instance ToText H264ColorMetadata where
    toText (H264ColorMetadata' ci) = original ci

-- | Represents an enum of /known/ $H264ColorMetadata.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264ColorMetadata where
    toEnum i = case i of
        0 -> Ignore
        1 -> Insert
        _ -> (error . showText) $ "Unknown index for H264ColorMetadata: " <> toText i
    fromEnum x = case x of
        Ignore -> 0
        Insert -> 1
        H264ColorMetadata' name -> (error . showText) $ "Unknown H264ColorMetadata: " <> original name

-- | Represents the bounds of /known/ $H264ColorMetadata.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264ColorMetadata where
    minBound = Ignore
    maxBound = Insert

instance Hashable     H264ColorMetadata
instance NFData       H264ColorMetadata
instance ToByteString H264ColorMetadata
instance ToQuery      H264ColorMetadata
instance ToHeader     H264ColorMetadata

instance ToJSON H264ColorMetadata where
    toJSON = toJSONText

instance FromJSON H264ColorMetadata where
    parseJSON = parseJSONText "H264ColorMetadata"
