CREATE TABLE asset (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  active_from timestamp DEFAULT NULL,
  active_until timestamp DEFAULT NULL,
  description varchar(255) NOT NULL,
  content_id varchar(255) NOT NULL,
  duration varchar(50) DEFAULT NULL,
  enabled bit(1) NOT NULL,
  state varchar(255) NOT NULL,
  tenant_id int4 NOT NULL,
  type varchar(255) NOT NULL,
  usage_type varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE asset_locale_restriction (
  asset_id int4 NOT NULL,
  locale_restrictions varchar(255) DEFAULT NULL
) ;

CREATE TABLE asset_resource (
  asset_id int4 NOT NULL,
  type varchar(255) NOT NULL,
  uri varchar(255) DEFAULT NULL,
  PRIMARY KEY (asset_id,type)
) ;

CREATE TABLE campaign (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  active_from timestamp DEFAULT NULL,
  active_until timestamp DEFAULT NULL,
  mde_condition varchar(8192) NOT NULL,
  description varchar(255) NOT NULL,
  enabled bit(1) NOT NULL,
  impression_target int4 NOT NULL,
  name varchar(255) NOT NULL,
  placement_count int4 NOT NULL,
  priority INTEGER NOT NULL,
  tenant_id int4 NOT NULL,
  tracking_profile_id int4 DEFAULT NULL,
  use_case_id int4 NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE campaign_asset (
  asset_id int4 NOT NULL,
  campaign_id int4 NOT NULL
) ;

CREATE TABLE campaign_exclusive (
  campaign_id int4 NOT NULL,
  exclusives varchar(255) DEFAULT NULL
) ;

CREATE TABLE campaign_opportunity_restriction (
  campaign_id int4 NOT NULL,
  opportunity_restrictions varchar(255) DEFAULT NULL
) ;

CREATE TABLE campaign_placement_action (
  campaign_id int4 NOT NULL,
  end_at varchar(50) DEFAULT NULL,
  parameters varchar(255) DEFAULT NULL,
  placement_span varchar(255) DEFAULT NULL,
  enabled bit(1) NOT NULL,
  start_at varchar(50) DEFAULT NULL,
  type varchar(255) NOT NULL,
  PRIMARY KEY (campaign_id,type)
) ;

CREATE TABLE placement_rule (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  active_from timestamp DEFAULT NULL,
  active_until timestamp DEFAULT NULL,
  mde_condition varchar(8192) NOT NULL,
  description varchar(255) NOT NULL,
  enabled bit(1) NOT NULL,
  name varchar(255) NOT NULL,
  priority int4 NOT NULL,
  tenant_id int4 NOT NULL,
  use_case_id int4 NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE placement_rule_placement_opportunity (
  placement_rule_id int4 NOT NULL,
  duration varchar(50) DEFAULT NULL,
  max_placements int4 DEFAULT NULL,
  type varchar(255) NOT NULL
) ;

CREATE TABLE placement_use_case (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  description varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  require_customer_id bit(1) NOT NULL,
  require_device_id bit(1) NOT NULL,
  require_locale bit(1) NOT NULL,
  require_user_id bit(1) NOT NULL,
  lookup_customerdna bit(1) NOT NULL,
  PRIMARY KEY (ID)
) ;

CREATE TABLE placement_use_case_attribute (
  placement_use_case_id int4 NOT NULL,
  description varchar(255) DEFAULT NULL,
  name varchar(255) NOT NULL,
  required bit(1) NOT NULL
) ;

CREATE TABLE tenant (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  enabled bit(1) NOT NULL,
  end_time timestamp DEFAULT NULL,
  name varchar(255) NOT NULL,
  short_name varchar(255) NOT NULL,
  start_time timestamp DEFAULT NULL,
  PRIMARY KEY (ID)
) ;

CREATE TABLE tenant_placement_use_case (
  tenant_id int4 NOT NULL,
  placement_use_case_id int4 NOT NULL
) ;

CREATE TABLE tenant_rule (
  id int4 NOT NULL ,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  active_from timestamp DEFAULT NULL,
  active_until timestamp DEFAULT NULL,
  mde_condition varchar(8192) NOT NULL,
  description varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  use_case_id int4 NOT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE tenant_rule_allowed_tenant (
  tenant_id int4 NOT NULL,
  tenant_rule_id int4 NOT NULL
) ;

CREATE TABLE tracking_profile (
  id int4 NOT NULL ,
  tenant_id int4 NOT NULL,
  created_on timestamp NOT NULL,
  modified_on timestamp DEFAULT NULL,
  name varchar(255) NOT NULL,
  uri varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ;

CREATE TABLE tracking_profile_event (
  tracking_profile_id int4 NOT NULL,
  type varchar(255) NOT NULL,
  uri varchar(255) DEFAULT NULL,
  PRIMARY KEY (tracking_profile_id,type)
) ;
