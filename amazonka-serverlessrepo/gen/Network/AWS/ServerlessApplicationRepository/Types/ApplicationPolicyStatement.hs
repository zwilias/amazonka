{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.Types.ApplicationPolicyStatement
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServerlessApplicationRepository.Types.ApplicationPolicyStatement where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Policy statement applied to the application.
--
--
--
-- /See:/ 'applicationPolicyStatement' smart constructor.
data ApplicationPolicyStatement = ApplicationPolicyStatement'{_apsStatementId
                                                              :: !(Maybe Text),
                                                              _apsPrincipals ::
                                                              ![Text],
                                                              _apsActions ::
                                                              ![Text]}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'ApplicationPolicyStatement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apsStatementId' - A unique ID for the statement.
--
-- * 'apsPrincipals' - An AWS account ID, or * to make the application public.
--
-- * 'apsActions' - A list of supported actions:  GetApplication    CreateCloudFormationChangeSet    ListApplicationVersions    SearchApplications    Deploy (Note: This action enables all other actions above.)
applicationPolicyStatement
    :: ApplicationPolicyStatement
applicationPolicyStatement
  = ApplicationPolicyStatement'{_apsStatementId =
                                  Nothing,
                                _apsPrincipals = mempty, _apsActions = mempty}

-- | A unique ID for the statement.
apsStatementId :: Lens' ApplicationPolicyStatement (Maybe Text)
apsStatementId = lens _apsStatementId (\ s a -> s{_apsStatementId = a})

-- | An AWS account ID, or * to make the application public.
apsPrincipals :: Lens' ApplicationPolicyStatement [Text]
apsPrincipals = lens _apsPrincipals (\ s a -> s{_apsPrincipals = a}) . _Coerce

-- | A list of supported actions:  GetApplication    CreateCloudFormationChangeSet    ListApplicationVersions    SearchApplications    Deploy (Note: This action enables all other actions above.)
apsActions :: Lens' ApplicationPolicyStatement [Text]
apsActions = lens _apsActions (\ s a -> s{_apsActions = a}) . _Coerce

instance FromJSON ApplicationPolicyStatement where
        parseJSON
          = withObject "ApplicationPolicyStatement"
              (\ x ->
                 ApplicationPolicyStatement' <$>
                   (x .:? "statementId") <*>
                     (x .:? "principals" .!= mempty)
                     <*> (x .:? "actions" .!= mempty))

instance Hashable ApplicationPolicyStatement where

instance NFData ApplicationPolicyStatement where

instance ToJSON ApplicationPolicyStatement where
        toJSON ApplicationPolicyStatement'{..}
          = object
              (catMaybes
                 [("statementId" .=) <$> _apsStatementId,
                  Just ("principals" .= _apsPrincipals),
                  Just ("actions" .= _apsActions)])
