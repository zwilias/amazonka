{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.FargateProfileSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.FargateProfileSelector where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Fargate profile selector.
--
--
--
-- /See:/ 'fargateProfileSelector' smart constructor.
data FargateProfileSelector = FargateProfileSelector'{_fpsNamespace
                                                      :: !(Maybe Text),
                                                      _fpsLabels ::
                                                      !(Maybe (Map Text Text))}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'FargateProfileSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpsNamespace' - The Kubernetes namespace that the selector should match.
--
-- * 'fpsLabels' - The Kubernetes labels that the selector should match. A pod must contain all of the labels that are specified in the selector for it to be considered a match.
fargateProfileSelector
    :: FargateProfileSelector
fargateProfileSelector
  = FargateProfileSelector'{_fpsNamespace = Nothing,
                            _fpsLabels = Nothing}

-- | The Kubernetes namespace that the selector should match.
fpsNamespace :: Lens' FargateProfileSelector (Maybe Text)
fpsNamespace = lens _fpsNamespace (\ s a -> s{_fpsNamespace = a})

-- | The Kubernetes labels that the selector should match. A pod must contain all of the labels that are specified in the selector for it to be considered a match.
fpsLabels :: Lens' FargateProfileSelector (HashMap Text Text)
fpsLabels = lens _fpsLabels (\ s a -> s{_fpsLabels = a}) . _Default . _Map

instance FromJSON FargateProfileSelector where
        parseJSON
          = withObject "FargateProfileSelector"
              (\ x ->
                 FargateProfileSelector' <$>
                   (x .:? "namespace") <*> (x .:? "labels" .!= mempty))

instance Hashable FargateProfileSelector where

instance NFData FargateProfileSelector where

instance ToJSON FargateProfileSelector where
        toJSON FargateProfileSelector'{..}
          = object
              (catMaybes
                 [("namespace" .=) <$> _fpsNamespace,
                  ("labels" .=) <$> _fpsLabels])
