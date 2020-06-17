{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.FleetType (
  FleetType (
    ..
    , FTInstant
    , FTMaintain
    , FTRequest
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetType = FleetType' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern FTInstant :: FleetType
pattern FTInstant = FleetType' "instant"

pattern FTMaintain :: FleetType
pattern FTMaintain = FleetType' "maintain"

pattern FTRequest :: FleetType
pattern FTRequest = FleetType' "request"

{-# COMPLETE
  FTInstant,
  FTMaintain,
  FTRequest,
  FleetType' #-}

instance FromText FleetType where
    parser = (FleetType' . mk) <$> takeText

instance ToText FleetType where
    toText (FleetType' ci) = original ci

-- | Represents an enum of /known/ $FleetType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum FleetType where
    toEnum i = case i of
        0 -> FTInstant
        1 -> FTMaintain
        2 -> FTRequest
        _ -> (error . showText) $ "Unknown index for FleetType: " <> toText i
    fromEnum x = case x of
        FTInstant -> 0
        FTMaintain -> 1
        FTRequest -> 2
        FleetType' name -> (error . showText) $ "Unknown FleetType: " <> original name

-- | Represents the bounds of /known/ $FleetType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded FleetType where
    minBound = FTInstant
    maxBound = FTRequest

instance Hashable     FleetType
instance NFData       FleetType
instance ToByteString FleetType
instance ToQuery      FleetType
instance ToHeader     FleetType

instance FromXML FleetType where
    parseXML = parseXMLText "FleetType"
