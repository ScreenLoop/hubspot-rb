=begin
#Authors

#Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Cms
    module Blogs
      module Authors
        # Model definition for a Blog Author.
        class BlogAuthor
          # URL to the website of the Blog Author.
          attr_accessor :website

          # The full name of the Blog Author to be displayed.
          attr_accessor :display_name

          attr_accessor :created

          # URL to the Blog Author's Facebook page.
          attr_accessor :facebook

          attr_accessor :full_name

          # A short biography of the blog author.
          attr_accessor :bio

          # The explicitly defined ISO 639 language code of the blog author.
          attr_accessor :language

          # URL to the blog author's LinkedIn page.
          attr_accessor :linkedin

          # URL to the blog author's avatar, if supplying a custom one.
          attr_accessor :avatar

          # ID of the primary blog author this object was translated from.
          attr_accessor :translated_from_id

          # URL or username of the Twitter account associated with the Blog Author. This will be normalized into the Twitter url for said user.
          attr_accessor :twitter

          # The timestamp (ISO8601 format) when this Blog Author was deleted.
          attr_accessor :deleted_at

          attr_accessor :name

          # The unique ID of the Blog Author.
          attr_accessor :id

          attr_accessor :updated

          # Email address of the Blog Author.
          attr_accessor :email

          attr_accessor :slug

          class EnumAttributeValidator
            attr_reader :datatype
            attr_reader :allowable_values

            def initialize(datatype, allowable_values)
              @allowable_values = allowable_values.map do |value|
                case datatype.to_s
                when /Integer/i
                  value.to_i
                when /Float/i
                  value.to_f
                else
                  value
                end
              end
            end

            def valid?(value)
              !value || allowable_values.include?(value)
            end
          end

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'website' => :'website',
              :'display_name' => :'displayName',
              :'created' => :'created',
              :'facebook' => :'facebook',
              :'full_name' => :'fullName',
              :'bio' => :'bio',
              :'language' => :'language',
              :'linkedin' => :'linkedin',
              :'avatar' => :'avatar',
              :'translated_from_id' => :'translatedFromId',
              :'twitter' => :'twitter',
              :'deleted_at' => :'deletedAt',
              :'name' => :'name',
              :'id' => :'id',
              :'updated' => :'updated',
              :'email' => :'email',
              :'slug' => :'slug'
            }
          end

          # Returns all the JSON keys this model knows about
          def self.acceptable_attributes
            attribute_map.values
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'website' => :'String',
              :'display_name' => :'String',
              :'created' => :'Time',
              :'facebook' => :'String',
              :'full_name' => :'String',
              :'bio' => :'String',
              :'language' => :'String',
              :'linkedin' => :'String',
              :'avatar' => :'String',
              :'translated_from_id' => :'Integer',
              :'twitter' => :'String',
              :'deleted_at' => :'Time',
              :'name' => :'String',
              :'id' => :'String',
              :'updated' => :'Time',
              :'email' => :'String',
              :'slug' => :'String'
            }
          end

          # List of attributes with nullable: true
          def self.openapi_nullable
            Set.new([
            ])
          end

          # Initializes the object
          # @param [Hash] attributes Model attributes in the form of hash
          def initialize(attributes = {})
            if (!attributes.is_a?(Hash))
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Cms::Blogs::Authors::BlogAuthor` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Cms::Blogs::Authors::BlogAuthor`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'website')
              self.website = attributes[:'website']
            end

            if attributes.key?(:'display_name')
              self.display_name = attributes[:'display_name']
            end

            if attributes.key?(:'created')
              self.created = attributes[:'created']
            end

            if attributes.key?(:'facebook')
              self.facebook = attributes[:'facebook']
            end

            if attributes.key?(:'full_name')
              self.full_name = attributes[:'full_name']
            end

            if attributes.key?(:'bio')
              self.bio = attributes[:'bio']
            end

            if attributes.key?(:'language')
              self.language = attributes[:'language']
            end

            if attributes.key?(:'linkedin')
              self.linkedin = attributes[:'linkedin']
            end

            if attributes.key?(:'avatar')
              self.avatar = attributes[:'avatar']
            end

            if attributes.key?(:'translated_from_id')
              self.translated_from_id = attributes[:'translated_from_id']
            end

            if attributes.key?(:'twitter')
              self.twitter = attributes[:'twitter']
            end

            if attributes.key?(:'deleted_at')
              self.deleted_at = attributes[:'deleted_at']
            end

            if attributes.key?(:'name')
              self.name = attributes[:'name']
            end

            if attributes.key?(:'id')
              self.id = attributes[:'id']
            end

            if attributes.key?(:'updated')
              self.updated = attributes[:'updated']
            end

            if attributes.key?(:'email')
              self.email = attributes[:'email']
            end

            if attributes.key?(:'slug')
              self.slug = attributes[:'slug']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @website.nil?
              invalid_properties.push('invalid value for "website", website cannot be nil.')
            end

            if @display_name.nil?
              invalid_properties.push('invalid value for "display_name", display_name cannot be nil.')
            end

            if @created.nil?
              invalid_properties.push('invalid value for "created", created cannot be nil.')
            end

            if @facebook.nil?
              invalid_properties.push('invalid value for "facebook", facebook cannot be nil.')
            end

            if @full_name.nil?
              invalid_properties.push('invalid value for "full_name", full_name cannot be nil.')
            end

            if @bio.nil?
              invalid_properties.push('invalid value for "bio", bio cannot be nil.')
            end

            if @language.nil?
              invalid_properties.push('invalid value for "language", language cannot be nil.')
            end

            if @linkedin.nil?
              invalid_properties.push('invalid value for "linkedin", linkedin cannot be nil.')
            end

            if @avatar.nil?
              invalid_properties.push('invalid value for "avatar", avatar cannot be nil.')
            end

            if @translated_from_id.nil?
              invalid_properties.push('invalid value for "translated_from_id", translated_from_id cannot be nil.')
            end

            if @twitter.nil?
              invalid_properties.push('invalid value for "twitter", twitter cannot be nil.')
            end

            if @deleted_at.nil?
              invalid_properties.push('invalid value for "deleted_at", deleted_at cannot be nil.')
            end

            if @name.nil?
              invalid_properties.push('invalid value for "name", name cannot be nil.')
            end

            if @id.nil?
              invalid_properties.push('invalid value for "id", id cannot be nil.')
            end

            if @updated.nil?
              invalid_properties.push('invalid value for "updated", updated cannot be nil.')
            end

            if @email.nil?
              invalid_properties.push('invalid value for "email", email cannot be nil.')
            end

            if @slug.nil?
              invalid_properties.push('invalid value for "slug", slug cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @website.nil?
            return false if @display_name.nil?
            return false if @created.nil?
            return false if @facebook.nil?
            return false if @full_name.nil?
            return false if @bio.nil?
            return false if @language.nil?
            language_validator = EnumAttributeValidator.new('String', ["af", "af-na", "af-za", "agq", "agq-cm", "ak", "ak-gh", "am", "am-et", "ar", "ar-001", "ar-ae", "ar-bh", "ar-dj", "ar-dz", "ar-eg", "ar-eh", "ar-er", "ar-il", "ar-iq", "ar-jo", "ar-km", "ar-kw", "ar-lb", "ar-ly", "ar-ma", "ar-mr", "ar-om", "ar-ps", "ar-qa", "ar-sa", "ar-sd", "ar-so", "ar-ss", "ar-sy", "ar-td", "ar-tn", "ar-ye", "as", "as-in", "asa", "asa-tz", "ast", "ast-es", "az", "az-az", "bas", "bas-cm", "be", "be-by", "bem", "bem-zm", "bez", "bez-tz", "bg", "bg-bg", "bm", "bm-ml", "bn", "bn-bd", "bn-in", "bo", "bo-cn", "bo-in", "br", "br-fr", "brx", "brx-in", "bs", "bs-ba", "ca", "ca-ad", "ca-es", "ca-fr", "ca-it", "ccp", "ccp-bd", "ccp-in", "ce", "ce-ru", "ceb", "ceb-ph", "cgg", "cgg-ug", "chr", "chr-us", "ckb", "ckb-iq", "ckb-ir", "cs", "cs-cz", "cu", "cu-ru", "cy", "cy-gb", "da", "da-dk", "da-gl", "dav", "dav-ke", "de", "de-at", "de-be", "de-ch", "de-de", "de-gr", "de-it", "de-li", "de-lu", "dje", "dje-ne", "doi", "doi-in", "dsb", "dsb-de", "dua", "dua-cm", "dyo", "dyo-sn", "dz", "dz-bt", "ebu", "ebu-ke", "ee", "ee-gh", "ee-tg", "el", "el-cy", "el-gr", "en", "en-001", "en-150", "en-ae", "en-ag", "en-ai", "en-as", "en-at", "en-au", "en-bb", "en-be", "en-bi", "en-bm", "en-bs", "en-bw", "en-bz", "en-ca", "en-cc", "en-ch", "en-ck", "en-cm", "en-cn", "en-cx", "en-cy", "en-de", "en-dg", "en-dk", "en-dm", "en-er", "en-fi", "en-fj", "en-fk", "en-fm", "en-gb", "en-gd", "en-gg", "en-gh", "en-gi", "en-gm", "en-gu", "en-gy", "en-hk", "en-ie", "en-il", "en-im", "en-in", "en-io", "en-je", "en-jm", "en-ke", "en-ki", "en-kn", "en-ky", "en-lc", "en-lr", "en-ls", "en-lu", "en-mg", "en-mh", "en-mo", "en-mp", "en-ms", "en-mt", "en-mu", "en-mw", "en-mx", "en-my", "en-na", "en-nf", "en-ng", "en-nl", "en-nr", "en-nu", "en-nz", "en-pg", "en-ph", "en-pk", "en-pn", "en-pr", "en-pw", "en-rw", "en-sb", "en-sc", "en-sd", "en-se", "en-sg", "en-sh", "en-si", "en-sl", "en-ss", "en-sx", "en-sz", "en-tc", "en-tk", "en-to", "en-tt", "en-tv", "en-tz", "en-ug", "en-um", "en-us", "en-vc", "en-vg", "en-vi", "en-vu", "en-ws", "en-za", "en-zm", "en-zw", "eo", "eo-001", "es", "es-419", "es-ar", "es-bo", "es-br", "es-bz", "es-cl", "es-co", "es-cr", "es-cu", "es-do", "es-ea", "es-ec", "es-es", "es-gq", "es-gt", "es-hn", "es-ic", "es-mx", "es-ni", "es-pa", "es-pe", "es-ph", "es-pr", "es-py", "es-sv", "es-us", "es-uy", "es-ve", "et", "et-ee", "eu", "eu-es", "ewo", "ewo-cm", "fa", "fa-af", "fa-ir", "ff", "ff-bf", "ff-cm", "ff-gh", "ff-gm", "ff-gn", "ff-gw", "ff-lr", "ff-mr", "ff-ne", "ff-ng", "ff-sl", "ff-sn", "fi", "fi-fi", "fil", "fil-ph", "fo", "fo-dk", "fo-fo", "fr", "fr-be", "fr-bf", "fr-bi", "fr-bj", "fr-bl", "fr-ca", "fr-cd", "fr-cf", "fr-cg", "fr-ch", "fr-ci", "fr-cm", "fr-dj", "fr-dz", "fr-fr", "fr-ga", "fr-gf", "fr-gn", "fr-gp", "fr-gq", "fr-ht", "fr-km", "fr-lu", "fr-ma", "fr-mc", "fr-mf", "fr-mg", "fr-ml", "fr-mq", "fr-mr", "fr-mu", "fr-nc", "fr-ne", "fr-pf", "fr-pm", "fr-re", "fr-rw", "fr-sc", "fr-sn", "fr-sy", "fr-td", "fr-tg", "fr-tn", "fr-vu", "fr-wf", "fr-yt", "fur", "fur-it", "fy", "fy-nl", "ga", "ga-gb", "ga-ie", "gd", "gd-gb", "gl", "gl-es", "gsw", "gsw-ch", "gsw-fr", "gsw-li", "gu", "gu-in", "guz", "guz-ke", "gv", "gv-im", "ha", "ha-gh", "ha-ne", "ha-ng", "haw", "haw-us", "he", "hi", "hi-in", "hr", "hr-ba", "hr-hr", "hsb", "hsb-de", "hu", "hu-hu", "hy", "hy-am", "ia", "ia-001", "id", "ig", "ig-ng", "ii", "ii-cn", "id-id", "is", "is-is", "it", "it-ch", "it-it", "it-sm", "it-va", "he-il", "ja", "ja-jp", "jgo", "jgo-cm", "yi", "yi-001", "jmc", "jmc-tz", "jv", "jv-id", "ka", "ka-ge", "kab", "kab-dz", "kam", "kam-ke", "kde", "kde-tz", "kea", "kea-cv", "khq", "khq-ml", "ki", "ki-ke", "kk", "kk-kz", "kkj", "kkj-cm", "kl", "kl-gl", "kln", "kln-ke", "km", "km-kh", "kn", "kn-in", "ko", "ko-kp", "ko-kr", "kok", "kok-in", "ks", "ks-in", "ksb", "ksb-tz", "ksf", "ksf-cm", "ksh", "ksh-de", "kw", "kw-gb", "ku", "ku-tr", "ky", "ky-kg", "lag", "lag-tz", "lb", "lb-lu", "lg", "lg-ug", "lkt", "lkt-us", "ln", "ln-ao", "ln-cd", "ln-cf", "ln-cg", "lo", "lo-la", "lrc", "lrc-iq", "lrc-ir", "lt", "lt-lt", "lu", "lu-cd", "luo", "luo-ke", "luy", "luy-ke", "lv", "lv-lv", "mai", "mai-in", "mas", "mas-ke", "mas-tz", "mer", "mer-ke", "mfe", "mfe-mu", "mg", "mg-mg", "mgh", "mgh-mz", "mgo", "mgo-cm", "mi", "mi-nz", "mk", "mk-mk", "ml", "ml-in", "mn", "mn-mn", "mni", "mni-in", "mr", "mr-in", "ms", "ms-bn", "ms-id", "ms-my", "ms-sg", "mt", "mt-mt", "mua", "mua-cm", "my", "my-mm", "mzn", "mzn-ir", "naq", "naq-na", "nb", "nb-no", "nb-sj", "nd", "nd-zw", "nds", "nds-de", "nds-nl", "ne", "ne-in", "ne-np", "nl", "nl-aw", "nl-be", "nl-ch", "nl-bq", "nl-cw", "nl-lu", "nl-nl", "nl-sr", "nl-sx", "nmg", "nmg-cm", "nn", "nn-no", "nnh", "nnh-cm", "no", "no-no", "nus", "nus-ss", "nyn", "nyn-ug", "om", "om-et", "om-ke", "or", "or-in", "os", "os-ge", "os-ru", "pa", "pa-in", "pa-pk", "pcm", "pcm-ng", "pl", "pl-pl", "prg", "prg-001", "ps", "ps-af", "ps-pk", "pt", "pt-ao", "pt-br", "pt-ch", "pt-cv", "pt-gq", "pt-gw", "pt-lu", "pt-mo", "pt-mz", "pt-pt", "pt-st", "pt-tl", "qu", "qu-bo", "qu-ec", "qu-pe", "rm", "rm-ch", "rn", "rn-bi", "ro", "ro-md", "ro-ro", "rof", "rof-tz", "ru", "ru-by", "ru-kg", "ru-kz", "ru-md", "ru-ru", "ru-ua", "rw", "rw-rw", "rwk", "rwk-tz", "sa", "sa-in", "sah", "sah-ru", "saq", "saq-ke", "sat", "sat-in", "sbp", "sbp-tz", "sd", "sd-in", "sd-pk", "se", "se-fi", "se-no", "se-se", "seh", "seh-mz", "ses", "ses-ml", "sg", "sg-cf", "shi", "shi-ma", "si", "si-lk", "sk", "sk-sk", "sl", "sl-si", "smn", "smn-fi", "sn", "sn-zw", "so", "so-dj", "so-et", "so-ke", "so-so", "sq", "sq-al", "sq-mk", "sq-xk", "sr", "sr-ba", "sr-cs", "sr-me", "sr-rs", "sr-xk", "su", "su-id", "sv", "sv-ax", "sv-fi", "sv-se", "sw", "sw-cd", "sw-ke", "sw-tz", "sw-ug", "sy", "ta", "ta-in", "ta-lk", "ta-my", "ta-sg", "te", "te-in", "teo", "teo-ke", "teo-ug", "tg", "tg-tj", "th", "th-th", "ti", "ti-er", "ti-et", "tk", "tk-tm", "tl", "to", "to-to", "tr", "tr-cy", "tr-tr", "tt", "tt-ru", "twq", "twq-ne", "tzm", "tzm-ma", "ug", "ug-cn", "uk", "uk-ua", "ur", "ur-in", "ur-pk", "uz", "uz-af", "uz-uz", "vai", "vai-lr", "vi", "vi-vn", "vo", "vo-001", "vun", "vun-tz", "wae", "wae-ch", "wo", "wo-sn", "xh", "xh-za", "xog", "xog-ug", "yav", "yav-cm", "yo", "yo-bj", "yo-ng", "yue", "yue-cn", "yue-hk", "zgh", "zgh-ma", "zh", "zh-cn", "zh-hk", "zh-mo", "zh-sg", "zh-tw", "zh-hans", "zh-hant", "zu", "zu-za"])
            return false unless language_validator.valid?(@language)
            return false if @linkedin.nil?
            return false if @avatar.nil?
            return false if @translated_from_id.nil?
            return false if @twitter.nil?
            return false if @deleted_at.nil?
            return false if @name.nil?
            return false if @id.nil?
            return false if @updated.nil?
            return false if @email.nil?
            return false if @slug.nil?
            true
          end

          # Custom attribute writer method checking allowed values (enum).
          # @param [Object] language Object to be assigned
          def language=(language)
            validator = EnumAttributeValidator.new('String', ["af", "af-na", "af-za", "agq", "agq-cm", "ak", "ak-gh", "am", "am-et", "ar", "ar-001", "ar-ae", "ar-bh", "ar-dj", "ar-dz", "ar-eg", "ar-eh", "ar-er", "ar-il", "ar-iq", "ar-jo", "ar-km", "ar-kw", "ar-lb", "ar-ly", "ar-ma", "ar-mr", "ar-om", "ar-ps", "ar-qa", "ar-sa", "ar-sd", "ar-so", "ar-ss", "ar-sy", "ar-td", "ar-tn", "ar-ye", "as", "as-in", "asa", "asa-tz", "ast", "ast-es", "az", "az-az", "bas", "bas-cm", "be", "be-by", "bem", "bem-zm", "bez", "bez-tz", "bg", "bg-bg", "bm", "bm-ml", "bn", "bn-bd", "bn-in", "bo", "bo-cn", "bo-in", "br", "br-fr", "brx", "brx-in", "bs", "bs-ba", "ca", "ca-ad", "ca-es", "ca-fr", "ca-it", "ccp", "ccp-bd", "ccp-in", "ce", "ce-ru", "ceb", "ceb-ph", "cgg", "cgg-ug", "chr", "chr-us", "ckb", "ckb-iq", "ckb-ir", "cs", "cs-cz", "cu", "cu-ru", "cy", "cy-gb", "da", "da-dk", "da-gl", "dav", "dav-ke", "de", "de-at", "de-be", "de-ch", "de-de", "de-gr", "de-it", "de-li", "de-lu", "dje", "dje-ne", "doi", "doi-in", "dsb", "dsb-de", "dua", "dua-cm", "dyo", "dyo-sn", "dz", "dz-bt", "ebu", "ebu-ke", "ee", "ee-gh", "ee-tg", "el", "el-cy", "el-gr", "en", "en-001", "en-150", "en-ae", "en-ag", "en-ai", "en-as", "en-at", "en-au", "en-bb", "en-be", "en-bi", "en-bm", "en-bs", "en-bw", "en-bz", "en-ca", "en-cc", "en-ch", "en-ck", "en-cm", "en-cn", "en-cx", "en-cy", "en-de", "en-dg", "en-dk", "en-dm", "en-er", "en-fi", "en-fj", "en-fk", "en-fm", "en-gb", "en-gd", "en-gg", "en-gh", "en-gi", "en-gm", "en-gu", "en-gy", "en-hk", "en-ie", "en-il", "en-im", "en-in", "en-io", "en-je", "en-jm", "en-ke", "en-ki", "en-kn", "en-ky", "en-lc", "en-lr", "en-ls", "en-lu", "en-mg", "en-mh", "en-mo", "en-mp", "en-ms", "en-mt", "en-mu", "en-mw", "en-mx", "en-my", "en-na", "en-nf", "en-ng", "en-nl", "en-nr", "en-nu", "en-nz", "en-pg", "en-ph", "en-pk", "en-pn", "en-pr", "en-pw", "en-rw", "en-sb", "en-sc", "en-sd", "en-se", "en-sg", "en-sh", "en-si", "en-sl", "en-ss", "en-sx", "en-sz", "en-tc", "en-tk", "en-to", "en-tt", "en-tv", "en-tz", "en-ug", "en-um", "en-us", "en-vc", "en-vg", "en-vi", "en-vu", "en-ws", "en-za", "en-zm", "en-zw", "eo", "eo-001", "es", "es-419", "es-ar", "es-bo", "es-br", "es-bz", "es-cl", "es-co", "es-cr", "es-cu", "es-do", "es-ea", "es-ec", "es-es", "es-gq", "es-gt", "es-hn", "es-ic", "es-mx", "es-ni", "es-pa", "es-pe", "es-ph", "es-pr", "es-py", "es-sv", "es-us", "es-uy", "es-ve", "et", "et-ee", "eu", "eu-es", "ewo", "ewo-cm", "fa", "fa-af", "fa-ir", "ff", "ff-bf", "ff-cm", "ff-gh", "ff-gm", "ff-gn", "ff-gw", "ff-lr", "ff-mr", "ff-ne", "ff-ng", "ff-sl", "ff-sn", "fi", "fi-fi", "fil", "fil-ph", "fo", "fo-dk", "fo-fo", "fr", "fr-be", "fr-bf", "fr-bi", "fr-bj", "fr-bl", "fr-ca", "fr-cd", "fr-cf", "fr-cg", "fr-ch", "fr-ci", "fr-cm", "fr-dj", "fr-dz", "fr-fr", "fr-ga", "fr-gf", "fr-gn", "fr-gp", "fr-gq", "fr-ht", "fr-km", "fr-lu", "fr-ma", "fr-mc", "fr-mf", "fr-mg", "fr-ml", "fr-mq", "fr-mr", "fr-mu", "fr-nc", "fr-ne", "fr-pf", "fr-pm", "fr-re", "fr-rw", "fr-sc", "fr-sn", "fr-sy", "fr-td", "fr-tg", "fr-tn", "fr-vu", "fr-wf", "fr-yt", "fur", "fur-it", "fy", "fy-nl", "ga", "ga-gb", "ga-ie", "gd", "gd-gb", "gl", "gl-es", "gsw", "gsw-ch", "gsw-fr", "gsw-li", "gu", "gu-in", "guz", "guz-ke", "gv", "gv-im", "ha", "ha-gh", "ha-ne", "ha-ng", "haw", "haw-us", "he", "hi", "hi-in", "hr", "hr-ba", "hr-hr", "hsb", "hsb-de", "hu", "hu-hu", "hy", "hy-am", "ia", "ia-001", "id", "ig", "ig-ng", "ii", "ii-cn", "id-id", "is", "is-is", "it", "it-ch", "it-it", "it-sm", "it-va", "he-il", "ja", "ja-jp", "jgo", "jgo-cm", "yi", "yi-001", "jmc", "jmc-tz", "jv", "jv-id", "ka", "ka-ge", "kab", "kab-dz", "kam", "kam-ke", "kde", "kde-tz", "kea", "kea-cv", "khq", "khq-ml", "ki", "ki-ke", "kk", "kk-kz", "kkj", "kkj-cm", "kl", "kl-gl", "kln", "kln-ke", "km", "km-kh", "kn", "kn-in", "ko", "ko-kp", "ko-kr", "kok", "kok-in", "ks", "ks-in", "ksb", "ksb-tz", "ksf", "ksf-cm", "ksh", "ksh-de", "kw", "kw-gb", "ku", "ku-tr", "ky", "ky-kg", "lag", "lag-tz", "lb", "lb-lu", "lg", "lg-ug", "lkt", "lkt-us", "ln", "ln-ao", "ln-cd", "ln-cf", "ln-cg", "lo", "lo-la", "lrc", "lrc-iq", "lrc-ir", "lt", "lt-lt", "lu", "lu-cd", "luo", "luo-ke", "luy", "luy-ke", "lv", "lv-lv", "mai", "mai-in", "mas", "mas-ke", "mas-tz", "mer", "mer-ke", "mfe", "mfe-mu", "mg", "mg-mg", "mgh", "mgh-mz", "mgo", "mgo-cm", "mi", "mi-nz", "mk", "mk-mk", "ml", "ml-in", "mn", "mn-mn", "mni", "mni-in", "mr", "mr-in", "ms", "ms-bn", "ms-id", "ms-my", "ms-sg", "mt", "mt-mt", "mua", "mua-cm", "my", "my-mm", "mzn", "mzn-ir", "naq", "naq-na", "nb", "nb-no", "nb-sj", "nd", "nd-zw", "nds", "nds-de", "nds-nl", "ne", "ne-in", "ne-np", "nl", "nl-aw", "nl-be", "nl-ch", "nl-bq", "nl-cw", "nl-lu", "nl-nl", "nl-sr", "nl-sx", "nmg", "nmg-cm", "nn", "nn-no", "nnh", "nnh-cm", "no", "no-no", "nus", "nus-ss", "nyn", "nyn-ug", "om", "om-et", "om-ke", "or", "or-in", "os", "os-ge", "os-ru", "pa", "pa-in", "pa-pk", "pcm", "pcm-ng", "pl", "pl-pl", "prg", "prg-001", "ps", "ps-af", "ps-pk", "pt", "pt-ao", "pt-br", "pt-ch", "pt-cv", "pt-gq", "pt-gw", "pt-lu", "pt-mo", "pt-mz", "pt-pt", "pt-st", "pt-tl", "qu", "qu-bo", "qu-ec", "qu-pe", "rm", "rm-ch", "rn", "rn-bi", "ro", "ro-md", "ro-ro", "rof", "rof-tz", "ru", "ru-by", "ru-kg", "ru-kz", "ru-md", "ru-ru", "ru-ua", "rw", "rw-rw", "rwk", "rwk-tz", "sa", "sa-in", "sah", "sah-ru", "saq", "saq-ke", "sat", "sat-in", "sbp", "sbp-tz", "sd", "sd-in", "sd-pk", "se", "se-fi", "se-no", "se-se", "seh", "seh-mz", "ses", "ses-ml", "sg", "sg-cf", "shi", "shi-ma", "si", "si-lk", "sk", "sk-sk", "sl", "sl-si", "smn", "smn-fi", "sn", "sn-zw", "so", "so-dj", "so-et", "so-ke", "so-so", "sq", "sq-al", "sq-mk", "sq-xk", "sr", "sr-ba", "sr-cs", "sr-me", "sr-rs", "sr-xk", "su", "su-id", "sv", "sv-ax", "sv-fi", "sv-se", "sw", "sw-cd", "sw-ke", "sw-tz", "sw-ug", "sy", "ta", "ta-in", "ta-lk", "ta-my", "ta-sg", "te", "te-in", "teo", "teo-ke", "teo-ug", "tg", "tg-tj", "th", "th-th", "ti", "ti-er", "ti-et", "tk", "tk-tm", "tl", "to", "to-to", "tr", "tr-cy", "tr-tr", "tt", "tt-ru", "twq", "twq-ne", "tzm", "tzm-ma", "ug", "ug-cn", "uk", "uk-ua", "ur", "ur-in", "ur-pk", "uz", "uz-af", "uz-uz", "vai", "vai-lr", "vi", "vi-vn", "vo", "vo-001", "vun", "vun-tz", "wae", "wae-ch", "wo", "wo-sn", "xh", "xh-za", "xog", "xog-ug", "yav", "yav-cm", "yo", "yo-bj", "yo-ng", "yue", "yue-cn", "yue-hk", "zgh", "zgh-ma", "zh", "zh-cn", "zh-hk", "zh-mo", "zh-sg", "zh-tw", "zh-hans", "zh-hant", "zu", "zu-za"])
            unless validator.valid?(language)
              fail ArgumentError, "invalid value for \"language\", must be one of #{validator.allowable_values}."
            end
            @language = language
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                website == o.website &&
                display_name == o.display_name &&
                created == o.created &&
                facebook == o.facebook &&
                full_name == o.full_name &&
                bio == o.bio &&
                language == o.language &&
                linkedin == o.linkedin &&
                avatar == o.avatar &&
                translated_from_id == o.translated_from_id &&
                twitter == o.twitter &&
                deleted_at == o.deleted_at &&
                name == o.name &&
                id == o.id &&
                updated == o.updated &&
                email == o.email &&
                slug == o.slug
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [website, display_name, created, facebook, full_name, bio, language, linkedin, avatar, translated_from_id, twitter, deleted_at, name, id, updated, email, slug].hash
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def self.build_from_hash(attributes)
            new.build_from_hash(attributes)
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def build_from_hash(attributes)
            return nil unless attributes.is_a?(Hash)
            attributes = attributes.transform_keys(&:to_sym)
            self.class.openapi_types.each_pair do |key, type|
              if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
                self.send("#{key}=", nil)
              elsif type =~ /\AArray<(.*)>/i
                # check to ensure the input is an array given that the attribute
                # is documented as an array but the input is not
                if attributes[self.class.attribute_map[key]].is_a?(Array)
                  self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
                end
              elsif !attributes[self.class.attribute_map[key]].nil?
                self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
              end
            end

            self
          end

          # Deserializes the data based on type
          # @param string type Data type
          # @param string value Value to be deserialized
          # @return [Object] Deserialized data
          def _deserialize(type, value)
            case type.to_sym
            when :Time
              Time.parse(value)
            when :Date
              Date.parse(value)
            when :String
              value.to_s
            when :Integer
              value.to_i
            when :Float
              value.to_f
            when :Boolean
              if value.to_s =~ /\A(true|t|yes|y|1)\z/i
                true
              else
                false
              end
            when :Object
              # generic object (usually a Hash), return directly
              value
            when /\AArray<(?<inner_type>.+)>\z/
              inner_type = Regexp.last_match[:inner_type]
              value.map { |v| _deserialize(inner_type, v) }
            when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
              k_type = Regexp.last_match[:k_type]
              v_type = Regexp.last_match[:v_type]
              {}.tap do |hash|
                value.each do |k, v|
                  hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
                end
              end
            else # model
              # models (e.g. Pet) or oneOf
              klass = Hubspot::Cms::Blogs::Authors.const_get(type)
              klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
            end
          end

          # Returns the string representation of the object
          # @return [String] String presentation of the object
          def to_s
            to_hash.to_s
          end

          # to_body is an alias to to_hash (backward compatibility)
          # @return [Hash] Returns the object in the form of hash
          def to_body
            to_hash
          end

          # Returns the object in the form of hash
          # @return [Hash] Returns the object in the form of hash
          def to_hash
            hash = {}
            self.class.attribute_map.each_pair do |attr, param|
              value = self.send(attr)
              if value.nil?
                is_nullable = self.class.openapi_nullable.include?(attr)
                next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
              end

              hash[param] = _to_hash(value)
            end
            hash
          end

          # Outputs non-array value in the form of hash
          # For object, use to_hash. Otherwise, just return the value
          # @param [Object] value Any valid value
          # @return [Hash] Returns the value in the form of hash
          def _to_hash(value)
            if value.is_a?(Array)
              value.compact.map { |v| _to_hash(v) }
            elsif value.is_a?(Hash)
              {}.tap do |hash|
                value.each { |k, v| hash[k] = _to_hash(v) }
              end
            elsif value.respond_to? :to_hash
              value.to_hash
            else
              value
            end
          end

        end

      end
    end
  end
end
