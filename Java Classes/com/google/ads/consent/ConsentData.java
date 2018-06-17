package com.google.ads.consent;

import com.google.a.a.c;
import java.util.HashSet;

class ConsentData
{
  @c("providers")
  HashSet<AdProvider> adProviders = new HashSet();
  @c("consent_source")
  String consentSource;
  @c("consent_state")
  ConsentStatus consentStatus = ConsentStatus.UNKNOWN;
  @c("consented_providers")
  HashSet<AdProvider> consentedAdProviders = new HashSet();
  @c("has_any_npa_pub_id")
  boolean hasNonPersonalizedPublisherId = false;
  @c("is_request_in_eea_or_unknown")
  boolean isRequestLocationInEeaOrUnknown = false;
  @c("pub_ids")
  HashSet<String> publisherIds = new HashSet();
  @c("raw_response")
  String rawResponse = "";
  @c("plat")
  private final String sdkPlatformString = "android";
  @c("version")
  private final String sdkVersionString = "1.0.3";
  @c("tag_for_under_age_of_consent")
  Boolean underAgeOfConsent = Boolean.valueOf(false);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/consent/ConsentData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */