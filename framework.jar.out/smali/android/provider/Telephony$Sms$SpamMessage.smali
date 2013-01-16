.class public final Landroid/provider/Telephony$Sms$SpamMessage;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamMessage"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final SPAM_CAUGHT_BY_KEYWORD:I = 0x4

.field public static final SPAM_CAUGHT_BY_MANUAL:I = 0x3

.field public static final SPAM_CAUGHT_BY_NUMBER_WITH_CLOUD:I = 0x2

.field public static final SPAM_CAUGHT_BY_NUMBER_WITH_CUSTOM:I = 0x1

.field public static final SPAM_CAUGHT_BY_TMS:I = 0x6

.field public static final SPAM_CAUGHT_FOR_ADDRESS_NOT_EXIST_IN_DATABASES:I = 0x5

.field public static final SPAM_DATE:Ljava/lang/String; = "spam_date"

.field public static final SPAM_TYPE:Ljava/lang/String; = "spam_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    const-string v0, "content://sms/spam"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$SpamMessage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
