#
# Table structure for table 'tt_content'
#
CREATE TABLE tt_content (
  tx_flux_column varchar(255) DEFAULT NULL,
  tx_flux_parent int(11) DEFAULT NULL,
  tx_flux_children int(11) DEFAULT NULL,

  KEY index_fluxcolumn (tx_flux_column(12)),
  KEY index_fluxparent (tx_flux_parent),
  KEY index_fluxparentcolumn (tx_flux_column(12),tx_flux_parent)
);

#
# Table structure for table 'cf_flux_preview_cache'
#
CREATE TABLE cf_flux_preview_cache (
    id INT(11) unsigned NOT NULL AUTO_INCREMENT,
    identifier VARCHAR(250) DEFAULT '' NOT NULL,
    crdate INT(11) unsigned DEFAULT '0' NOT NULL,
    content mediumblob,
    expires INT(11) unsigned DEFAULT '0' NOT NULL,
    PRIMARY KEY (id),
    KEY cache_id (identifier)
) ENGINE=InnoDB;

#
# Table structure for table 'cf_flux_preview_cache_tags'
#
CREATE TABLE cf_flux_preview_cache_tags (
    id INT(11) unsigned NOT NULL AUTO_INCREMENT,
    identifier VARCHAR(250) DEFAULT '' NOT NULL,
    tag VARCHAR(250) DEFAULT '' NOT NULL,
    PRIMARY KEY (id),
    KEY cache_id (identifier),
    KEY cache_tag (tag)
) ENGINE=InnoDB;
