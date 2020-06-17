{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus (
  CertificateAuthorityStatus (
    ..
    , Active
    , Creating
    , Disabled
    , Expired
    , Failed
    , PendingCertificate
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateAuthorityStatus = CertificateAuthorityStatus' (CI
                                                                 Text)
                                    deriving (Eq, Ord, Read, Show, Data,
                                              Typeable, Generic)

pattern Active :: CertificateAuthorityStatus
pattern Active = CertificateAuthorityStatus' "ACTIVE"

pattern Creating :: CertificateAuthorityStatus
pattern Creating = CertificateAuthorityStatus' "CREATING"

pattern Disabled :: CertificateAuthorityStatus
pattern Disabled = CertificateAuthorityStatus' "DISABLED"

pattern Expired :: CertificateAuthorityStatus
pattern Expired = CertificateAuthorityStatus' "EXPIRED"

pattern Failed :: CertificateAuthorityStatus
pattern Failed = CertificateAuthorityStatus' "FAILED"

pattern PendingCertificate :: CertificateAuthorityStatus
pattern PendingCertificate = CertificateAuthorityStatus' "PENDING_CERTIFICATE"

{-# COMPLETE
  Active,
  Creating,
  Disabled,
  Expired,
  Failed,
  PendingCertificate,
  CertificateAuthorityStatus' #-}

instance FromText CertificateAuthorityStatus where
    parser = (CertificateAuthorityStatus' . mk) <$> takeText

instance ToText CertificateAuthorityStatus where
    toText (CertificateAuthorityStatus' ci) = original ci

-- | Represents an enum of /known/ $CertificateAuthorityStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum CertificateAuthorityStatus where
    toEnum i = case i of
        0 -> Active
        1 -> Creating
        2 -> Disabled
        3 -> Expired
        4 -> Failed
        5 -> PendingCertificate
        _ -> (error . showText) $ "Unknown index for CertificateAuthorityStatus: " <> toText i
    fromEnum x = case x of
        Active -> 0
        Creating -> 1
        Disabled -> 2
        Expired -> 3
        Failed -> 4
        PendingCertificate -> 5
        CertificateAuthorityStatus' name -> (error . showText) $ "Unknown CertificateAuthorityStatus: " <> original name

-- | Represents the bounds of /known/ $CertificateAuthorityStatus.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded CertificateAuthorityStatus where
    minBound = Active
    maxBound = PendingCertificate

instance Hashable     CertificateAuthorityStatus
instance NFData       CertificateAuthorityStatus
instance ToByteString CertificateAuthorityStatus
instance ToQuery      CertificateAuthorityStatus
instance ToHeader     CertificateAuthorityStatus

instance ToJSON CertificateAuthorityStatus where
    toJSON = toJSONText

instance FromJSON CertificateAuthorityStatus where
    parseJSON = parseJSONText "CertificateAuthorityStatus"
