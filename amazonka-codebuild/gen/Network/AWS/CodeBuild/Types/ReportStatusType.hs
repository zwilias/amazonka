{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.ReportStatusType where

import Network.AWS.Prelude
  
data ReportStatusType = Deleting
                      | Failed
                      | Generating
                      | Incomplete
                      | Succeeded
                          deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                    Typeable, Generic)

instance FromText ReportStatusType where
    parser = takeLowerText >>= \case
        "deleting" -> pure Deleting
        "failed" -> pure Failed
        "generating" -> pure Generating
        "incomplete" -> pure Incomplete
        "succeeded" -> pure Succeeded
        e -> fromTextError $ "Failure parsing ReportStatusType from value: '" <> e
           <> "'. Accepted values: deleting, failed, generating, incomplete, succeeded"

instance ToText ReportStatusType where
    toText = \case
        Deleting -> "DELETING"
        Failed -> "FAILED"
        Generating -> "GENERATING"
        Incomplete -> "INCOMPLETE"
        Succeeded -> "SUCCEEDED"

instance Hashable     ReportStatusType
instance NFData       ReportStatusType
instance ToByteString ReportStatusType
instance ToQuery      ReportStatusType
instance ToHeader     ReportStatusType

instance ToJSON ReportStatusType where
    toJSON = toJSONText

instance FromJSON ReportStatusType where
    parseJSON = parseJSONText "ReportStatusType"
