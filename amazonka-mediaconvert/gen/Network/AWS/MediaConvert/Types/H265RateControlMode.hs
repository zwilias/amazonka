{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265RateControlMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H265RateControlMode (
  H265RateControlMode (
    ..
    , Cbr
    , Vbr
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Rate control mode. CQ uses constant quantizer (qp), ABR (average bitrate) does not write HRD parameters.
data H265RateControlMode = H265RateControlMode' (CI
                                                   Text)
                             deriving (Eq, Ord, Read, Show, Data, Typeable,
                                       Generic)

pattern Cbr :: H265RateControlMode
pattern Cbr = H265RateControlMode' "CBR"

pattern Vbr :: H265RateControlMode
pattern Vbr = H265RateControlMode' "VBR"

{-# COMPLETE
  Cbr,
  Vbr,
  H265RateControlMode' #-}

instance FromText H265RateControlMode where
    parser = (H265RateControlMode' . mk) <$> takeText

instance ToText H265RateControlMode where
    toText (H265RateControlMode' ci) = original ci

-- | Represents an enum of /known/ $H265RateControlMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum H265RateControlMode where
    toEnum i = case i of
        0 -> Cbr
        1 -> Vbr
        _ -> (error . showText) $ "Unknown index for H265RateControlMode: " <> toText i
    fromEnum x = case x of
        Cbr -> 0
        Vbr -> 1
        H265RateControlMode' name -> (error . showText) $ "Unknown H265RateControlMode: " <> original name

-- | Represents the bounds of /known/ $H265RateControlMode.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded H265RateControlMode where
    minBound = Cbr
    maxBound = Vbr

instance Hashable     H265RateControlMode
instance NFData       H265RateControlMode
instance ToByteString H265RateControlMode
instance ToQuery      H265RateControlMode
instance ToHeader     H265RateControlMode

instance ToJSON H265RateControlMode where
    toJSON = toJSONText

instance FromJSON H265RateControlMode where
    parseJSON = parseJSONText "H265RateControlMode"
