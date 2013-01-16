.class public final Landroid/provider/Telephony$Sms$SpamKeyword;
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
    name = "SpamKeyword"
.end annotation


# static fields
.field public static final CONTENT_CHANGED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DESC:Ljava/lang/String; = "sync1"

.field public static final KEYWORD:Ljava/lang/String; = "keyword"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 493
    const-string v0, "content://sms/spam_keyword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$SpamKeyword;->CONTENT_URI:Landroid/net/Uri;

    .line 494
    const-string v0, "content://spam_keyword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$SpamKeyword;->CONTENT_CHANGED_URI:Landroid/net/Uri;

    .line 499
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyword"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Sms$SpamKeyword;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
