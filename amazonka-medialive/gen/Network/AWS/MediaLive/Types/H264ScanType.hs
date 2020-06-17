{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ScanType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264ScanType (
  H264ScanType (
    ..
    , Interlaced
    , Progressive
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for H264ScanType
data H264ScanType = H264ScanType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern Interlaced :: H264ScanType
pattern Interlaced = H264ScanType' "INTERLACED"

pattern Progressive :: H264ScanType
pattern Progressive = H264ScanType' "PROGRESSIVE"

{-# COMPLETE
  Interlaced,
  Progressive,
  H264ScanType' #-}

instance FromText H264ScanType where
    parser = (H264ScanType' . mk) <$> takeText

instance ToText H264ScanType where
    toText (H264ScanType' ci) = original ci

-- | Represents an enum of /known/ $H264ScanType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264ScanType where
    toEnum i = case i of
        0 -> Interlaced
        1 -> Progressive
        _ -> (error . showText) $ "Unknown index for H264ScanType: " <> toText i
    fromEnum x = case x of
        Interlaced -> 0
        Progressive -> 1
        H264ScanType' name -> (error . showText) $ "Unknown H264ScanType: " <> original name

-- | Represents the bounds of /known/ $H264ScanType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264ScanType where
    minBound = Interlaced
    maxBound = Progressive

instance Hashable     H264ScanType
instance NFData       H264ScanType
instance ToByteString H264ScanType
instance ToQuery      H264ScanType
instance ToHeader     H264ScanType

instance ToJSON H264ScanType where
    toJSON = toJSONText

instance FromJSON H264ScanType where
    parseJSON = parseJSONText "H264ScanType"
