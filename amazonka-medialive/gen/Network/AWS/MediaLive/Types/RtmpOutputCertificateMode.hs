{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.RtmpOutputCertificateMode
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.RtmpOutputCertificateMode where

import Network.AWS.Prelude
  
-- | Placeholder documentation for RtmpOutputCertificateMode
data RtmpOutputCertificateMode = ROCMSelfSigned
                               | ROCMVerifyAuthenticity
                                   deriving (Eq, Ord, Read, Show, Enum, Bounded,
                                             Data, Typeable, Generic)

instance FromText RtmpOutputCertificateMode where
    parser = takeLowerText >>= \case
        "self_signed" -> pure ROCMSelfSigned
        "verify_authenticity" -> pure ROCMVerifyAuthenticity
        e -> fromTextError $ "Failure parsing RtmpOutputCertificateMode from value: '" <> e
           <> "'. Accepted values: self_signed, verify_authenticity"

instance ToText RtmpOutputCertificateMode where
    toText = \case
        ROCMSelfSigned -> "SELF_SIGNED"
        ROCMVerifyAuthenticity -> "VERIFY_AUTHENTICITY"

instance Hashable     RtmpOutputCertificateMode
instance NFData       RtmpOutputCertificateMode
instance ToByteString RtmpOutputCertificateMode
instance ToQuery      RtmpOutputCertificateMode
instance ToHeader     RtmpOutputCertificateMode

instance ToJSON RtmpOutputCertificateMode where
    toJSON = toJSONText

instance FromJSON RtmpOutputCertificateMode where
    parseJSON = parseJSONText "RtmpOutputCertificateMode"
