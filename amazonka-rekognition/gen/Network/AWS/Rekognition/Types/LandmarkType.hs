{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.LandmarkType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.LandmarkType where

import Network.AWS.Prelude
  
data LandmarkType = EyeLeft
                  | EyeRight
                  | LeftEyeBrowLeft
                  | LeftEyeBrowRight
                  | LeftEyeBrowUp
                  | LeftEyeDown
                  | LeftEyeLeft
                  | LeftEyeRight
                  | LeftEyeUp
                  | LeftPupil
                  | MouthDown
                  | MouthLeft
                  | MouthRight
                  | MouthUp
                  | Nose
                  | NoseLeft
                  | NoseRight
                  | RightEyeBrowLeft
                  | RightEyeBrowRight
                  | RightEyeBrowUp
                  | RightEyeDown
                  | RightEyeLeft
                  | RightEyeRight
                  | RightEyeUp
                  | RightPupil
                      deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                Typeable, Generic)

instance FromText LandmarkType where
    parser = takeLowerText >>= \case
        "eyeleft" -> pure EyeLeft
        "eyeright" -> pure EyeRight
        "lefteyebrowleft" -> pure LeftEyeBrowLeft
        "lefteyebrowright" -> pure LeftEyeBrowRight
        "lefteyebrowup" -> pure LeftEyeBrowUp
        "lefteyedown" -> pure LeftEyeDown
        "lefteyeleft" -> pure LeftEyeLeft
        "lefteyeright" -> pure LeftEyeRight
        "lefteyeup" -> pure LeftEyeUp
        "leftpupil" -> pure LeftPupil
        "mouthdown" -> pure MouthDown
        "mouthleft" -> pure MouthLeft
        "mouthright" -> pure MouthRight
        "mouthup" -> pure MouthUp
        "nose" -> pure Nose
        "noseleft" -> pure NoseLeft
        "noseright" -> pure NoseRight
        "righteyebrowleft" -> pure RightEyeBrowLeft
        "righteyebrowright" -> pure RightEyeBrowRight
        "righteyebrowup" -> pure RightEyeBrowUp
        "righteyedown" -> pure RightEyeDown
        "righteyeleft" -> pure RightEyeLeft
        "righteyeright" -> pure RightEyeRight
        "righteyeup" -> pure RightEyeUp
        "rightpupil" -> pure RightPupil
        e -> fromTextError $ "Failure parsing LandmarkType from value: '" <> e
           <> "'. Accepted values: eyeleft, eyeright, lefteyebrowleft, lefteyebrowright, lefteyebrowup, lefteyedown, lefteyeleft, lefteyeright, lefteyeup, leftpupil, mouthdown, mouthleft, mouthright, mouthup, nose, noseleft, noseright, righteyebrowleft, righteyebrowright, righteyebrowup, righteyedown, righteyeleft, righteyeright, righteyeup, rightpupil"

instance ToText LandmarkType where
    toText = \case
        EyeLeft -> "eyeLeft"
        EyeRight -> "eyeRight"
        LeftEyeBrowLeft -> "leftEyeBrowLeft"
        LeftEyeBrowRight -> "leftEyeBrowRight"
        LeftEyeBrowUp -> "leftEyeBrowUp"
        LeftEyeDown -> "leftEyeDown"
        LeftEyeLeft -> "leftEyeLeft"
        LeftEyeRight -> "leftEyeRight"
        LeftEyeUp -> "leftEyeUp"
        LeftPupil -> "leftPupil"
        MouthDown -> "mouthDown"
        MouthLeft -> "mouthLeft"
        MouthRight -> "mouthRight"
        MouthUp -> "mouthUp"
        Nose -> "nose"
        NoseLeft -> "noseLeft"
        NoseRight -> "noseRight"
        RightEyeBrowLeft -> "rightEyeBrowLeft"
        RightEyeBrowRight -> "rightEyeBrowRight"
        RightEyeBrowUp -> "rightEyeBrowUp"
        RightEyeDown -> "rightEyeDown"
        RightEyeLeft -> "rightEyeLeft"
        RightEyeRight -> "rightEyeRight"
        RightEyeUp -> "rightEyeUp"
        RightPupil -> "rightPupil"

instance Hashable     LandmarkType
instance NFData       LandmarkType
instance ToByteString LandmarkType
instance ToQuery      LandmarkType
instance ToHeader     LandmarkType

instance FromJSON LandmarkType where
    parseJSON = parseJSONText "LandmarkType"
