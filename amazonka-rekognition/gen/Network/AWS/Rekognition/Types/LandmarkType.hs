{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

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
module Network.AWS.Rekognition.Types.LandmarkType (
  LandmarkType (
    ..
    , EyeLeft
    , EyeRight
    , LeftEyeBrowLeft
    , LeftEyeBrowRight
    , LeftEyeBrowUp
    , LeftEyeDown
    , LeftEyeLeft
    , LeftEyeRight
    , LeftEyeUp
    , LeftPupil
    , MouthDown
    , MouthLeft
    , MouthRight
    , MouthUp
    , Nose
    , NoseLeft
    , NoseRight
    , RightEyeBrowLeft
    , RightEyeBrowRight
    , RightEyeBrowUp
    , RightEyeDown
    , RightEyeLeft
    , RightEyeRight
    , RightEyeUp
    , RightPupil
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LandmarkType = LandmarkType' (CI Text)
                      deriving (Eq, Ord, Read, Show, Data, Typeable,
                                Generic)

pattern EyeLeft :: LandmarkType
pattern EyeLeft = LandmarkType' "eyeLeft"

pattern EyeRight :: LandmarkType
pattern EyeRight = LandmarkType' "eyeRight"

pattern LeftEyeBrowLeft :: LandmarkType
pattern LeftEyeBrowLeft = LandmarkType' "leftEyeBrowLeft"

pattern LeftEyeBrowRight :: LandmarkType
pattern LeftEyeBrowRight = LandmarkType' "leftEyeBrowRight"

pattern LeftEyeBrowUp :: LandmarkType
pattern LeftEyeBrowUp = LandmarkType' "leftEyeBrowUp"

pattern LeftEyeDown :: LandmarkType
pattern LeftEyeDown = LandmarkType' "leftEyeDown"

pattern LeftEyeLeft :: LandmarkType
pattern LeftEyeLeft = LandmarkType' "leftEyeLeft"

pattern LeftEyeRight :: LandmarkType
pattern LeftEyeRight = LandmarkType' "leftEyeRight"

pattern LeftEyeUp :: LandmarkType
pattern LeftEyeUp = LandmarkType' "leftEyeUp"

pattern LeftPupil :: LandmarkType
pattern LeftPupil = LandmarkType' "leftPupil"

pattern MouthDown :: LandmarkType
pattern MouthDown = LandmarkType' "mouthDown"

pattern MouthLeft :: LandmarkType
pattern MouthLeft = LandmarkType' "mouthLeft"

pattern MouthRight :: LandmarkType
pattern MouthRight = LandmarkType' "mouthRight"

pattern MouthUp :: LandmarkType
pattern MouthUp = LandmarkType' "mouthUp"

pattern Nose :: LandmarkType
pattern Nose = LandmarkType' "nose"

pattern NoseLeft :: LandmarkType
pattern NoseLeft = LandmarkType' "noseLeft"

pattern NoseRight :: LandmarkType
pattern NoseRight = LandmarkType' "noseRight"

pattern RightEyeBrowLeft :: LandmarkType
pattern RightEyeBrowLeft = LandmarkType' "rightEyeBrowLeft"

pattern RightEyeBrowRight :: LandmarkType
pattern RightEyeBrowRight = LandmarkType' "rightEyeBrowRight"

pattern RightEyeBrowUp :: LandmarkType
pattern RightEyeBrowUp = LandmarkType' "rightEyeBrowUp"

pattern RightEyeDown :: LandmarkType
pattern RightEyeDown = LandmarkType' "rightEyeDown"

pattern RightEyeLeft :: LandmarkType
pattern RightEyeLeft = LandmarkType' "rightEyeLeft"

pattern RightEyeRight :: LandmarkType
pattern RightEyeRight = LandmarkType' "rightEyeRight"

pattern RightEyeUp :: LandmarkType
pattern RightEyeUp = LandmarkType' "rightEyeUp"

pattern RightPupil :: LandmarkType
pattern RightPupil = LandmarkType' "rightPupil"

{-# COMPLETE
  EyeLeft,
  EyeRight,
  LeftEyeBrowLeft,
  LeftEyeBrowRight,
  LeftEyeBrowUp,
  LeftEyeDown,
  LeftEyeLeft,
  LeftEyeRight,
  LeftEyeUp,
  LeftPupil,
  MouthDown,
  MouthLeft,
  MouthRight,
  MouthUp,
  Nose,
  NoseLeft,
  NoseRight,
  RightEyeBrowLeft,
  RightEyeBrowRight,
  RightEyeBrowUp,
  RightEyeDown,
  RightEyeLeft,
  RightEyeRight,
  RightEyeUp,
  RightPupil,
  LandmarkType' #-}

instance FromText LandmarkType where
    parser = (LandmarkType' . mk) <$> takeText

instance ToText LandmarkType where
    toText (LandmarkType' ci) = original ci

-- | Represents an enum of /known/ $LandmarkType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum LandmarkType where
    toEnum i = case i of
        0 -> EyeLeft
        1 -> EyeRight
        2 -> LeftEyeBrowLeft
        3 -> LeftEyeBrowRight
        4 -> LeftEyeBrowUp
        5 -> LeftEyeDown
        6 -> LeftEyeLeft
        7 -> LeftEyeRight
        8 -> LeftEyeUp
        9 -> LeftPupil
        10 -> MouthDown
        11 -> MouthLeft
        12 -> MouthRight
        13 -> MouthUp
        14 -> Nose
        15 -> NoseLeft
        16 -> NoseRight
        17 -> RightEyeBrowLeft
        18 -> RightEyeBrowRight
        19 -> RightEyeBrowUp
        20 -> RightEyeDown
        21 -> RightEyeLeft
        22 -> RightEyeRight
        23 -> RightEyeUp
        24 -> RightPupil
        _ -> (error . showText) $ "Unknown index for LandmarkType: " <> toText i
    fromEnum x = case x of
        EyeLeft -> 0
        EyeRight -> 1
        LeftEyeBrowLeft -> 2
        LeftEyeBrowRight -> 3
        LeftEyeBrowUp -> 4
        LeftEyeDown -> 5
        LeftEyeLeft -> 6
        LeftEyeRight -> 7
        LeftEyeUp -> 8
        LeftPupil -> 9
        MouthDown -> 10
        MouthLeft -> 11
        MouthRight -> 12
        MouthUp -> 13
        Nose -> 14
        NoseLeft -> 15
        NoseRight -> 16
        RightEyeBrowLeft -> 17
        RightEyeBrowRight -> 18
        RightEyeBrowUp -> 19
        RightEyeDown -> 20
        RightEyeLeft -> 21
        RightEyeRight -> 22
        RightEyeUp -> 23
        RightPupil -> 24
        LandmarkType' name -> (error . showText) $ "Unknown LandmarkType: " <> original name

-- | Represents the bounds of /known/ $LandmarkType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded LandmarkType where
    minBound = EyeLeft
    maxBound = RightPupil

instance Hashable     LandmarkType
instance NFData       LandmarkType
instance ToByteString LandmarkType
instance ToQuery      LandmarkType
instance ToHeader     LandmarkType

instance FromJSON LandmarkType where
    parseJSON = parseJSONText "LandmarkType"
