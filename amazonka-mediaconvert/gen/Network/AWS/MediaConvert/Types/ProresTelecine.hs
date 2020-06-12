{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresTelecine
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.ProresTelecine where

import Network.AWS.Prelude
  
-- | Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.
data ProresTelecine = PTHard
                    | PTNone
                        deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                  Typeable, Generic)

instance FromText ProresTelecine where
    parser = takeLowerText >>= \case
        "hard" -> pure PTHard
        "none" -> pure PTNone
        e -> fromTextError $ "Failure parsing ProresTelecine from value: '" <> e
           <> "'. Accepted values: hard, none"

instance ToText ProresTelecine where
    toText = \case
        PTHard -> "HARD"
        PTNone -> "NONE"

instance Hashable     ProresTelecine
instance NFData       ProresTelecine
instance ToByteString ProresTelecine
instance ToQuery      ProresTelecine
instance ToHeader     ProresTelecine

instance ToJSON ProresTelecine where
    toJSON = toJSONText

instance FromJSON ProresTelecine where
    parseJSON = parseJSONText "ProresTelecine"
