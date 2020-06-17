{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264RateControlMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.H264RateControlMode (
  H264RateControlMode (
    ..
    , Cbr
    , Vbr
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for H264RateControlMode
data H264RateControlMode = H264RateControlMode' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Cbr :: H264RateControlMode
pattern Cbr = H264RateControlMode' "CBR"

pattern Vbr :: H264RateControlMode
pattern Vbr = H264RateControlMode' "VBR"

{-# COMPLETE
  Cbr,
  Vbr,
  H264RateControlMode' #-}

instance FromText H264RateControlMode where
    parser = (H264RateControlMode' . mk) <$> takeText

instance ToText H264RateControlMode where
    toText (H264RateControlMode' ci) = original ci

-- | Represents an enum of /known/ $H264RateControlMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H264RateControlMode where
    toEnum i = case i of
        0 -> Cbr
        1 -> Vbr
        _ -> (error . showText) $ "Unknown index for H264RateControlMode: " <> toText i
    fromEnum x = case x of
        Cbr -> 0
        Vbr -> 1
        H264RateControlMode' name -> (error . showText) $ "Unknown H264RateControlMode: " <> original name

-- | Represents the bounds of /known/ $H264RateControlMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H264RateControlMode where
    minBound = Cbr
    maxBound = Vbr

instance Hashable     H264RateControlMode
instance NFData       H264RateControlMode
instance ToByteString H264RateControlMode
instance ToQuery      H264RateControlMode
instance ToHeader     H264RateControlMode

instance ToJSON H264RateControlMode where
    toJSON = toJSONText

instance FromJSON H264RateControlMode where
    parseJSON = parseJSONText "H264RateControlMode"
