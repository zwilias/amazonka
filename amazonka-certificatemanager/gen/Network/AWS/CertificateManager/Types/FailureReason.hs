{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.FailureReason
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CertificateManager.Types.FailureReason (
  FailureReason (
    ..
    , AdditionalVerificationRequired
    , CaaError
    , DomainNotAllowed
    , InvalidPublicDomain
    , NoAvailableContacts
    , Other
    , PcaInvalidARN
    , PcaInvalidArgs
    , PcaInvalidState
    , PcaLimitExceeded
    , PcaRequestFailed
    , PcaResourceNotFound
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailureReason = FailureReason' (CI Text)
                       deriving (Eq, Ord, Read, Show, Data, Typeable,
                                 Generic)

pattern AdditionalVerificationRequired :: FailureReason
pattern AdditionalVerificationRequired = FailureReason' "ADDITIONAL_VERIFICATION_REQUIRED"

pattern CaaError :: FailureReason
pattern CaaError = FailureReason' "CAA_ERROR"

pattern DomainNotAllowed :: FailureReason
pattern DomainNotAllowed = FailureReason' "DOMAIN_NOT_ALLOWED"

pattern InvalidPublicDomain :: FailureReason
pattern InvalidPublicDomain = FailureReason' "INVALID_PUBLIC_DOMAIN"

pattern NoAvailableContacts :: FailureReason
pattern NoAvailableContacts = FailureReason' "NO_AVAILABLE_CONTACTS"

pattern Other :: FailureReason
pattern Other = FailureReason' "OTHER"

pattern PcaInvalidARN :: FailureReason
pattern PcaInvalidARN = FailureReason' "PCA_INVALID_ARN"

pattern PcaInvalidArgs :: FailureReason
pattern PcaInvalidArgs = FailureReason' "PCA_INVALID_ARGS"

pattern PcaInvalidState :: FailureReason
pattern PcaInvalidState = FailureReason' "PCA_INVALID_STATE"

pattern PcaLimitExceeded :: FailureReason
pattern PcaLimitExceeded = FailureReason' "PCA_LIMIT_EXCEEDED"

pattern PcaRequestFailed :: FailureReason
pattern PcaRequestFailed = FailureReason' "PCA_REQUEST_FAILED"

pattern PcaResourceNotFound :: FailureReason
pattern PcaResourceNotFound = FailureReason' "PCA_RESOURCE_NOT_FOUND"

{-# COMPLETE
  AdditionalVerificationRequired,
  CaaError,
  DomainNotAllowed,
  InvalidPublicDomain,
  NoAvailableContacts,
  Other,
  PcaInvalidARN,
  PcaInvalidArgs,
  PcaInvalidState,
  PcaLimitExceeded,
  PcaRequestFailed,
  PcaResourceNotFound,
  FailureReason' #-}

instance FromText FailureReason where
    parser = (FailureReason' . mk) <$> takeText

instance ToText FailureReason where
    toText (FailureReason' ci) = original ci

-- | Represents an enum of /known/ $FailureReason.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum FailureReason where
    toEnum i = case i of
        0 -> AdditionalVerificationRequired
        1 -> CaaError
        2 -> DomainNotAllowed
        3 -> InvalidPublicDomain
        4 -> NoAvailableContacts
        5 -> Other
        6 -> PcaInvalidARN
        7 -> PcaInvalidArgs
        8 -> PcaInvalidState
        9 -> PcaLimitExceeded
        10 -> PcaRequestFailed
        11 -> PcaResourceNotFound
        _ -> (error . showText) $ "Unknown index for FailureReason: " <> toText i
    fromEnum x = case x of
        AdditionalVerificationRequired -> 0
        CaaError -> 1
        DomainNotAllowed -> 2
        InvalidPublicDomain -> 3
        NoAvailableContacts -> 4
        Other -> 5
        PcaInvalidARN -> 6
        PcaInvalidArgs -> 7
        PcaInvalidState -> 8
        PcaLimitExceeded -> 9
        PcaRequestFailed -> 10
        PcaResourceNotFound -> 11
        FailureReason' name -> (error . showText) $ "Unknown FailureReason: " <> original name

-- | Represents the bounds of /known/ $FailureReason.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded FailureReason where
    minBound = AdditionalVerificationRequired
    maxBound = PcaResourceNotFound

instance Hashable     FailureReason
instance NFData       FailureReason
instance ToByteString FailureReason
instance ToQuery      FailureReason
instance ToHeader     FailureReason

instance FromJSON FailureReason where
    parseJSON = parseJSONText "FailureReason"
