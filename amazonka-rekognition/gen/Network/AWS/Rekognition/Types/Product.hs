{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.Product (
    module Network.AWS.Rekognition.Types.AgeRange,
    module Network.AWS.Rekognition.Types.Beard,
    module Network.AWS.Rekognition.Types.BoundingBox,
    module Network.AWS.Rekognition.Types.Celebrity,
    module Network.AWS.Rekognition.Types.CelebrityDetail,
    module Network.AWS.Rekognition.Types.CelebrityRecognition,
    module Network.AWS.Rekognition.Types.CompareFacesMatch,
    module Network.AWS.Rekognition.Types.ComparedFace,
    module Network.AWS.Rekognition.Types.ComparedSourceImageFace,
    module Network.AWS.Rekognition.Types.ContentModerationDetection,
    module Network.AWS.Rekognition.Types.Emotion,
    module Network.AWS.Rekognition.Types.EyeOpen,
    module Network.AWS.Rekognition.Types.Eyeglasses,
    module Network.AWS.Rekognition.Types.Face,
    module Network.AWS.Rekognition.Types.FaceDetail,
    module Network.AWS.Rekognition.Types.FaceDetection,
    module Network.AWS.Rekognition.Types.FaceMatch,
    module Network.AWS.Rekognition.Types.FaceRecord,
    module Network.AWS.Rekognition.Types.FaceSearchSettings,
    module Network.AWS.Rekognition.Types.Gender,
    module Network.AWS.Rekognition.Types.Geometry,
    module Network.AWS.Rekognition.Types.Image,
    module Network.AWS.Rekognition.Types.ImageQuality,
    module Network.AWS.Rekognition.Types.KinesisDataStream,
    module Network.AWS.Rekognition.Types.KinesisVideoStream,
    module Network.AWS.Rekognition.Types.Label,
    module Network.AWS.Rekognition.Types.LabelDetection,
    module Network.AWS.Rekognition.Types.Landmark,
    module Network.AWS.Rekognition.Types.ModerationLabel,
    module Network.AWS.Rekognition.Types.MouthOpen,
    module Network.AWS.Rekognition.Types.Mustache,
    module Network.AWS.Rekognition.Types.NotificationChannel,
    module Network.AWS.Rekognition.Types.PersonDetail,
    module Network.AWS.Rekognition.Types.PersonDetection,
    module Network.AWS.Rekognition.Types.PersonMatch,
    module Network.AWS.Rekognition.Types.Point,
    module Network.AWS.Rekognition.Types.Pose,
    module Network.AWS.Rekognition.Types.S3Object,
    module Network.AWS.Rekognition.Types.Smile,
    module Network.AWS.Rekognition.Types.StreamProcessor,
    module Network.AWS.Rekognition.Types.StreamProcessorInput,
    module Network.AWS.Rekognition.Types.StreamProcessorOutput,
    module Network.AWS.Rekognition.Types.StreamProcessorSettings,
    module Network.AWS.Rekognition.Types.Sunglasses,
    module Network.AWS.Rekognition.Types.TextDetection,
    module Network.AWS.Rekognition.Types.Video,
    module Network.AWS.Rekognition.Types.VideoMetadata
  ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.AgeRange
import Network.AWS.Rekognition.Types.Beard
import Network.AWS.Rekognition.Types.BoundingBox
import Network.AWS.Rekognition.Types.Celebrity
import Network.AWS.Rekognition.Types.CelebrityDetail
import Network.AWS.Rekognition.Types.CelebrityRecognition
import Network.AWS.Rekognition.Types.CompareFacesMatch
import Network.AWS.Rekognition.Types.ComparedFace
import Network.AWS.Rekognition.Types.ComparedSourceImageFace
import Network.AWS.Rekognition.Types.ContentModerationDetection
import Network.AWS.Rekognition.Types.Emotion
import Network.AWS.Rekognition.Types.EyeOpen
import Network.AWS.Rekognition.Types.Eyeglasses
import Network.AWS.Rekognition.Types.Face
import Network.AWS.Rekognition.Types.FaceDetail
import Network.AWS.Rekognition.Types.FaceDetection
import Network.AWS.Rekognition.Types.FaceMatch
import Network.AWS.Rekognition.Types.FaceRecord
import Network.AWS.Rekognition.Types.FaceSearchSettings
import Network.AWS.Rekognition.Types.Gender
import Network.AWS.Rekognition.Types.Geometry
import Network.AWS.Rekognition.Types.Image
import Network.AWS.Rekognition.Types.ImageQuality
import Network.AWS.Rekognition.Types.KinesisDataStream
import Network.AWS.Rekognition.Types.KinesisVideoStream
import Network.AWS.Rekognition.Types.Label
import Network.AWS.Rekognition.Types.LabelDetection
import Network.AWS.Rekognition.Types.Landmark
import Network.AWS.Rekognition.Types.ModerationLabel
import Network.AWS.Rekognition.Types.MouthOpen
import Network.AWS.Rekognition.Types.Mustache
import Network.AWS.Rekognition.Types.NotificationChannel
import Network.AWS.Rekognition.Types.PersonDetail
import Network.AWS.Rekognition.Types.PersonDetection
import Network.AWS.Rekognition.Types.PersonMatch
import Network.AWS.Rekognition.Types.Point
import Network.AWS.Rekognition.Types.Pose
import Network.AWS.Rekognition.Types.S3Object
import Network.AWS.Rekognition.Types.Smile
import Network.AWS.Rekognition.Types.StreamProcessor
import Network.AWS.Rekognition.Types.StreamProcessorInput
import Network.AWS.Rekognition.Types.StreamProcessorOutput
import Network.AWS.Rekognition.Types.StreamProcessorSettings
import Network.AWS.Rekognition.Types.Sunglasses
import Network.AWS.Rekognition.Types.TextDetection
import Network.AWS.Rekognition.Types.Video
import Network.AWS.Rekognition.Types.VideoMetadata
