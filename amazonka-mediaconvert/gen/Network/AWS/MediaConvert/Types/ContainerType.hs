{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ContainerType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ContainerType (
  ContainerType (
    ..
    , F4V
    , Ismv
    , M2TS
    , M3U8
    , MP4
    , Mov
    , Mpd
    , Mxf
    , Raw
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
data ContainerType = ContainerType' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern F4V :: ContainerType
pattern F4V = ContainerType' "F4V"

pattern Ismv :: ContainerType
pattern Ismv = ContainerType' "ISMV"

pattern M2TS :: ContainerType
pattern M2TS = ContainerType' "M2TS"

pattern M3U8 :: ContainerType
pattern M3U8 = ContainerType' "M3U8"

pattern MP4 :: ContainerType
pattern MP4 = ContainerType' "MP4"

pattern Mov :: ContainerType
pattern Mov = ContainerType' "MOV"

pattern Mpd :: ContainerType
pattern Mpd = ContainerType' "MPD"

pattern Mxf :: ContainerType
pattern Mxf = ContainerType' "MXF"

pattern Raw :: ContainerType
pattern Raw = ContainerType' "RAW"

{-# COMPLETE
  F4V,
  Ismv,
  M2TS,
  M3U8,
  MP4,
  Mov,
  Mpd,
  Mxf,
  Raw,
  ContainerType' #-}

instance FromText ContainerType where
    parser = (ContainerType' . mk) <$> takeText

instance ToText ContainerType where
    toText (ContainerType' ci) = original ci

-- | Represents an enum of /known/ $ContainerType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ContainerType where
    toEnum i = case i of
        0 -> F4V
        1 -> Ismv
        2 -> M2TS
        3 -> M3U8
        4 -> MP4
        5 -> Mov
        6 -> Mpd
        7 -> Mxf
        8 -> Raw
        _ -> (error . showText) $ "Unknown index for ContainerType: " <> toText i
    fromEnum x = case x of
        F4V -> 0
        Ismv -> 1
        M2TS -> 2
        M3U8 -> 3
        MP4 -> 4
        Mov -> 5
        Mpd -> 6
        Mxf -> 7
        Raw -> 8
        ContainerType' name -> (error . showText) $ "Unknown ContainerType: " <> original name

-- | Represents the bounds of /known/ $ContainerType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ContainerType where
    minBound = F4V
    maxBound = Raw

instance Hashable     ContainerType
instance NFData       ContainerType
instance ToByteString ContainerType
instance ToQuery      ContainerType
instance ToHeader     ContainerType

instance ToJSON ContainerType where
    toJSON = toJSONText

instance FromJSON ContainerType where
    parseJSON = parseJSONText "ContainerType"
