{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.IdentityDkimAttributes
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.IdentityDkimAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SES.Types.VerificationStatus

-- | Represents the DKIM attributes of a verified email address or a domain.
--
--
--
-- /See:/ 'identityDkimAttributes' smart constructor.
data IdentityDkimAttributes = IdentityDkimAttributes'{_idaDkimTokens
                                                      :: !(Maybe [Text]),
                                                      _idaDkimEnabled :: !Bool,
                                                      _idaDkimVerificationStatus
                                                      :: !VerificationStatus}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'IdentityDkimAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idaDkimTokens' - A set of character strings that represent the domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. (This only applies to domain identities, not email address identities.) For more information about creating DNS records using DKIM tokens, go to the <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html Amazon SES Developer Guide> .
--
-- * 'idaDkimEnabled' - True if DKIM signing is enabled for email sent from the identity; false otherwise. The default value is true.
--
-- * 'idaDkimVerificationStatus' - Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens) published in the domain name's DNS. (This only applies to domain identities, not email address identities.)
identityDkimAttributes
    :: Bool -- ^ 'idaDkimEnabled'
    -> VerificationStatus -- ^ 'idaDkimVerificationStatus'
    -> IdentityDkimAttributes
identityDkimAttributes pDkimEnabled_
  pDkimVerificationStatus_
  = IdentityDkimAttributes'{_idaDkimTokens = Nothing,
                            _idaDkimEnabled = pDkimEnabled_,
                            _idaDkimVerificationStatus =
                              pDkimVerificationStatus_}

-- | A set of character strings that represent the domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. (This only applies to domain identities, not email address identities.) For more information about creating DNS records using DKIM tokens, go to the <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html Amazon SES Developer Guide> .
idaDkimTokens :: Lens' IdentityDkimAttributes [Text]
idaDkimTokens = lens _idaDkimTokens (\ s a -> s{_idaDkimTokens = a}) . _Default . _Coerce

-- | True if DKIM signing is enabled for email sent from the identity; false otherwise. The default value is true.
idaDkimEnabled :: Lens' IdentityDkimAttributes Bool
idaDkimEnabled = lens _idaDkimEnabled (\ s a -> s{_idaDkimEnabled = a})

-- | Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens) published in the domain name's DNS. (This only applies to domain identities, not email address identities.)
idaDkimVerificationStatus :: Lens' IdentityDkimAttributes VerificationStatus
idaDkimVerificationStatus = lens _idaDkimVerificationStatus (\ s a -> s{_idaDkimVerificationStatus = a})

instance FromXML IdentityDkimAttributes where
        parseXML x
          = IdentityDkimAttributes' <$>
              (x .@? "DkimTokens" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*> (x .@ "DkimEnabled")
                <*> (x .@ "DkimVerificationStatus")

instance Hashable IdentityDkimAttributes where

instance NFData IdentityDkimAttributes where
