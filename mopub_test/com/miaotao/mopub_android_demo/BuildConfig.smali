.class public final Lcom/miaotao/mopub_android_demo/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ADINFOUPLOAD:Z = true

.field public static final ADS_AUTO_LOAD:Z = true

.field public static final ADS_BUILD_DOMESTIC:Z = false

.field public static final ADS_BUILD_MITGR:Z = false

.field public static final ADS_BUILD_MOPUB:Z = true

.field public static final ADS_CLOG_OPEN:Z = true

.field public static final ADS_DEV_LOG:Z = true

.field public static final ADS_LOG_TAG_VER:I = 0x0

.field public static final ADS_RELEASE_LOG:Z = true

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.testtssfa.asdfasdg"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final MONITOR_CONFIG_AFFNAME:Z = true

.field public static final VERSION_CODE:I = 0x1

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miaotao/mopub_android_demo/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
