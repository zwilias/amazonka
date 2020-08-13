{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.UpdateParamType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.UpdateParamType (
  UpdateParamType (
    ..
    , ClusterLogging
    , DesiredSize
    , EndpointPrivateAccess
    , EndpointPublicAccess
    , LabelsToAdd
    , LabelsToRemove
    , MaxSize
    , MinSize
    , PlatformVersion
    , PublicAccessCidrs
    , ReleaseVersion
    , Version
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateParamType = UpdateParamType' (CI Text)
                         deriving (Eq, Ord, Read, Show, Data, Typeable,
                                   Generic)

pattern ClusterLogging :: UpdateParamType
pattern ClusterLogging = UpdateParamType' "ClusterLogging"

pattern DesiredSize :: UpdateParamType
pattern DesiredSize = UpdateParamType' "DesiredSize"

pattern EndpointPrivateAccess :: UpdateParamType
pattern EndpointPrivateAccess = UpdateParamType' "EndpointPrivateAccess"

pattern EndpointPublicAccess :: UpdateParamType
pattern EndpointPublicAccess = UpdateParamType' "EndpointPublicAccess"

pattern LabelsToAdd :: UpdateParamType
pattern LabelsToAdd = UpdateParamType' "LabelsToAdd"

pattern LabelsToRemove :: UpdateParamType
pattern LabelsToRemove = UpdateParamType' "LabelsToRemove"

pattern MaxSize :: UpdateParamType
pattern MaxSize = UpdateParamType' "MaxSize"

pattern MinSize :: UpdateParamType
pattern MinSize = UpdateParamType' "MinSize"

pattern PlatformVersion :: UpdateParamType
pattern PlatformVersion = UpdateParamType' "PlatformVersion"

pattern PublicAccessCidrs :: UpdateParamType
pattern PublicAccessCidrs = UpdateParamType' "PublicAccessCidrs"

pattern ReleaseVersion :: UpdateParamType
pattern ReleaseVersion = UpdateParamType' "ReleaseVersion"

pattern Version :: UpdateParamType
pattern Version = UpdateParamType' "Version"

{-# COMPLETE
  ClusterLogging,
  DesiredSize,
  EndpointPrivateAccess,
  EndpointPublicAccess,
  LabelsToAdd,
  LabelsToRemove,
  MaxSize,
  MinSize,
  PlatformVersion,
  PublicAccessCidrs,
  ReleaseVersion,
  Version,
  UpdateParamType' #-}

instance FromText UpdateParamType where
    parser = (UpdateParamType' . mk) <$> takeText

instance ToText UpdateParamType where
    toText (UpdateParamType' ci) = original ci

-- | Represents an enum of /known/ $UpdateParamType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum UpdateParamType where
    toEnum i = case i of
        0 -> ClusterLogging
        1 -> DesiredSize
        2 -> EndpointPrivateAccess
        3 -> EndpointPublicAccess
        4 -> LabelsToAdd
        5 -> LabelsToRemove
        6 -> MaxSize
        7 -> MinSize
        8 -> PlatformVersion
        9 -> PublicAccessCidrs
        10 -> ReleaseVersion
        11 -> Version
        _ -> (error . showText) $ "Unknown index for UpdateParamType: " <> toText i
    fromEnum x = case x of
        ClusterLogging -> 0
        DesiredSize -> 1
        EndpointPrivateAccess -> 2
        EndpointPublicAccess -> 3
        LabelsToAdd -> 4
        LabelsToRemove -> 5
        MaxSize -> 6
        MinSize -> 7
        PlatformVersion -> 8
        PublicAccessCidrs -> 9
        ReleaseVersion -> 10
        Version -> 11
        UpdateParamType' name -> (error . showText) $ "Unknown UpdateParamType: " <> original name

-- | Represents the bounds of /known/ $UpdateParamType.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded UpdateParamType where
    minBound = ClusterLogging
    maxBound = Version

instance Hashable     UpdateParamType
instance NFData       UpdateParamType
instance ToByteString UpdateParamType
instance ToQuery      UpdateParamType
instance ToHeader     UpdateParamType

instance FromJSON UpdateParamType where
    parseJSON = parseJSONText "UpdateParamType"
