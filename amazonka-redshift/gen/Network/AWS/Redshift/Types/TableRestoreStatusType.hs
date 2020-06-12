{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.TableRestoreStatusType
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.TableRestoreStatusType where

import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
  
data TableRestoreStatusType = Canceled
                            | Failed
                            | InProgress
                            | Pending
                            | Succeeded
                                deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                          Data, Typeable, Generic)

instance FromText TableRestoreStatusType where
    parser = takeLowerText >>= \case
        "canceled" -> pure Canceled
        "failed" -> pure Failed
        "in_progress" -> pure InProgress
        "pending" -> pure Pending
        "succeeded" -> pure Succeeded
        e -> fromTextError $ "Failure parsing TableRestoreStatusType from value: '" <> e
           <> "'. Accepted values: canceled, failed, in_progress, pending, succeeded"

instance ToText TableRestoreStatusType where
    toText = \case
        Canceled -> "CANCELED"
        Failed -> "FAILED"
        InProgress -> "IN_PROGRESS"
        Pending -> "PENDING"
        Succeeded -> "SUCCEEDED"

instance Hashable     TableRestoreStatusType
instance NFData       TableRestoreStatusType
instance ToByteString TableRestoreStatusType
instance ToQuery      TableRestoreStatusType
instance ToHeader     TableRestoreStatusType

instance FromXML TableRestoreStatusType where
    parseXML = parseXMLText "TableRestoreStatusType"
