{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.EndpointStatus (
  EndpointStatus (
    ..
    , Creating
    , Deleting
    , Failed
    , InService
    , OutOfService
    , RollingBack
    , Updating
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndpointStatus = EndpointStatus' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Creating :: EndpointStatus
pattern Creating = EndpointStatus' "Creating"

pattern Deleting :: EndpointStatus
pattern Deleting = EndpointStatus' "Deleting"

pattern Failed :: EndpointStatus
pattern Failed = EndpointStatus' "Failed"

pattern InService :: EndpointStatus
pattern InService = EndpointStatus' "InService"

pattern OutOfService :: EndpointStatus
pattern OutOfService = EndpointStatus' "OutOfService"

pattern RollingBack :: EndpointStatus
pattern RollingBack = EndpointStatus' "RollingBack"

pattern Updating :: EndpointStatus
pattern Updating = EndpointStatus' "Updating"

{-# COMPLETE
  Creating,
  Deleting,
  Failed,
  InService,
  OutOfService,
  RollingBack,
  Updating,
  EndpointStatus' #-}

instance FromText EndpointStatus where
    parser = (EndpointStatus' . mk) <$> takeText

instance ToText EndpointStatus where
    toText (EndpointStatus' ci) = original ci

-- | Represents an enum of /known/ $EndpointStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum EndpointStatus where
    toEnum i = case i of
        0 -> Creating
        1 -> Deleting
        2 -> Failed
        3 -> InService
        4 -> OutOfService
        5 -> RollingBack
        6 -> Updating
        _ -> (error . showText) $ "Unknown index for EndpointStatus: " <> toText i
    fromEnum x = case x of
        Creating -> 0
        Deleting -> 1
        Failed -> 2
        InService -> 3
        OutOfService -> 4
        RollingBack -> 5
        Updating -> 6
        EndpointStatus' name -> (error . showText) $ "Unknown EndpointStatus: " <> original name

-- | Represents the bounds of /known/ $EndpointStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded EndpointStatus where
    minBound = Creating
    maxBound = Updating

instance Hashable     EndpointStatus
instance NFData       EndpointStatus
instance ToByteString EndpointStatus
instance ToQuery      EndpointStatus
instance ToHeader     EndpointStatus

instance ToJSON EndpointStatus where
    toJSON = toJSONText

instance FromJSON EndpointStatus where
    parseJSON = parseJSONText "EndpointStatus"
