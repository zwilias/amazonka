{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.RenewalSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CertificateManager.Types.RenewalSummary where

import Network.AWS.CertificateManager.Types.DomainValidation
import Network.AWS.CertificateManager.Types.RenewalStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the status of ACM's <http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for the certificate. This structure exists only when the certificate type is @AMAZON_ISSUED@ .
--
--
--
-- /See:/ 'renewalSummary' smart constructor.
data RenewalSummary = RenewalSummary'{_rsRenewalStatus
                                      :: !RenewalStatus,
                                      _rsDomainValidationOptions ::
                                      !(List1 DomainValidation)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RenewalSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsRenewalStatus' - The status of ACM's <http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> of the certificate.
--
-- * 'rsDomainValidationOptions' - Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> . This is different from the initial validation that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
renewalSummary
    :: RenewalStatus -- ^ 'rsRenewalStatus'
    -> NonEmpty DomainValidation -- ^ 'rsDomainValidationOptions'
    -> RenewalSummary
renewalSummary pRenewalStatus_
  pDomainValidationOptions_
  = RenewalSummary'{_rsRenewalStatus = pRenewalStatus_,
                    _rsDomainValidationOptions =
                      _List1 # pDomainValidationOptions_}

-- | The status of ACM's <http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> of the certificate.
rsRenewalStatus :: Lens' RenewalSummary RenewalStatus
rsRenewalStatus = lens _rsRenewalStatus (\ s a -> s{_rsRenewalStatus = a})

-- | Contains information about the validation of each domain name in the certificate, as it pertains to ACM's <http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> . This is different from the initial validation that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
rsDomainValidationOptions :: Lens' RenewalSummary (NonEmpty DomainValidation)
rsDomainValidationOptions = lens _rsDomainValidationOptions (\ s a -> s{_rsDomainValidationOptions = a}) . _List1

instance FromJSON RenewalSummary where
        parseJSON
          = withObject "RenewalSummary"
              (\ x ->
                 RenewalSummary' <$>
                   (x .: "RenewalStatus") <*>
                     (x .: "DomainValidationOptions"))

instance Hashable RenewalSummary where

instance NFData RenewalSummary where
