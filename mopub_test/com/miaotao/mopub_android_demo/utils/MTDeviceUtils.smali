.class public Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;
.super Ljava/lang/Object;
.source "MTDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 171
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "stmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 173
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "n":I
    .end local v2    # "stmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "sbDeviceId":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "androidid":Ljava/lang/String;
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->getSERIAL()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "serial":Ljava/lang/String;
    invoke-static {}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->getDeviceUUID()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "-"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "uuid":Ljava/lang/String;
    const-string v7, "|"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 60
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->getHashByString(Ljava/lang/String;)[B

    move-result-object v7

    .line 61
    .local v7, "hash":[B
    invoke-static {v7}, Lcom/miaotao/mopub_android_demo/utils/MTDeviceUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "sha1":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v9, :cond_4

    .line 64
    return-object v8

    .line 68
    .end local v7    # "hash":[B
    .end local v8    # "sha1":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getDeviceUUID()Ljava/lang/String;
    .locals 6

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3883756"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "dev":Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-object v1

    .line 138
    .end local v0    # "dev":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v1, ""

    return-object v1
.end method

.method private static getHashByString(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 152
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 153
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 154
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 155
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 156
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    :try_start_0
    const-string v0, "phone"

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 83
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private static getSERIAL()Ljava/lang/String;
    .locals 1

    .line 112
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method
