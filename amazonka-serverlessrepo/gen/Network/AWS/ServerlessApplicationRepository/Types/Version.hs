{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.Types.Version
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServerlessApplicationRepository.Types.Version where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServerlessApplicationRepository.Types.ParameterDefinition

-- | Application version details.
--
--
--
-- /See:/ 'version' smart constructor.
data Version = Version'{_vSourceCodeURL ::
                        !(Maybe Text),
                        _vTemplateURL :: !Text,
                        _vParameterDefinitions :: ![ParameterDefinition],
                        _vCreationTime :: !Text, _vApplicationId :: !Text,
                        _vSemanticVersion :: !Text}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vSourceCodeURL' - A link to a public repository for the source code of your application.
--
-- * 'vTemplateURL' - A link to the packaged AWS SAM template of your application.
--
-- * 'vParameterDefinitions' - Array of parameter types supported by the application.
--
-- * 'vCreationTime' - The date/time this resource was created.
--
-- * 'vApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'vSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/> 
version
    :: Text -- ^ 'vTemplateURL'
    -> Text -- ^ 'vCreationTime'
    -> Text -- ^ 'vApplicationId'
    -> Text -- ^ 'vSemanticVersion'
    -> Version
version pTemplateURL_ pCreationTime_ pApplicationId_
  pSemanticVersion_
  = Version'{_vSourceCodeURL = Nothing,
             _vTemplateURL = pTemplateURL_,
             _vParameterDefinitions = mempty,
             _vCreationTime = pCreationTime_,
             _vApplicationId = pApplicationId_,
             _vSemanticVersion = pSemanticVersion_}

-- | A link to a public repository for the source code of your application.
vSourceCodeURL :: Lens' Version (Maybe Text)
vSourceCodeURL = lens _vSourceCodeURL (\ s a -> s{_vSourceCodeURL = a})

-- | A link to the packaged AWS SAM template of your application.
vTemplateURL :: Lens' Version Text
vTemplateURL = lens _vTemplateURL (\ s a -> s{_vTemplateURL = a})

-- | Array of parameter types supported by the application.
vParameterDefinitions :: Lens' Version [ParameterDefinition]
vParameterDefinitions = lens _vParameterDefinitions (\ s a -> s{_vParameterDefinitions = a}) . _Coerce

-- | The date/time this resource was created.
vCreationTime :: Lens' Version Text
vCreationTime = lens _vCreationTime (\ s a -> s{_vCreationTime = a})

-- | The application Amazon Resource Name (ARN).
vApplicationId :: Lens' Version Text
vApplicationId = lens _vApplicationId (\ s a -> s{_vApplicationId = a})

-- | The semantic version of the application: <https://semver.org/ https://semver.org/> 
vSemanticVersion :: Lens' Version Text
vSemanticVersion = lens _vSemanticVersion (\ s a -> s{_vSemanticVersion = a})

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ x ->
                 Version' <$>
                   (x .:? "sourceCodeUrl") <*> (x .: "templateUrl") <*>
                     (x .:? "parameterDefinitions" .!= mempty)
                     <*> (x .: "creationTime")
                     <*> (x .: "applicationId")
                     <*> (x .: "semanticVersion"))

instance Hashable Version where

instance NFData Version where
