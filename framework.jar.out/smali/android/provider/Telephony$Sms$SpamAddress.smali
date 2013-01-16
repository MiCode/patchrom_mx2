.class public final Landroid/provider/Telephony$Sms$SpamAddress;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamAddress"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CONTENT_CHANGED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DESC:Ljava/lang/String; = "sync1"

.field public static final GENERATED_BY_CLOUD:I = 0x2

.field public static final GENERATED_BY_CUSTOMER:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 478
    const-string v0, "content://sms/spam_address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$SpamAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 479
    const-string v0, "content://spam_address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$SpamAddress;->CONTENT_CHANGED_URI:Landroid/net/Uri;

    .line 485
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sync1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Sms$SpamAddress;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
