.class public final Landroid/provider/ContactsContract$SpamAddress;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$BaseSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpamAddress"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CLOUD_VERSION:Ljava/lang/String; = "cloud_version"

.field public static final CONTENT_CLOUD_VERSION_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CUSTOMER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final GENERATED_BY_CLOUD:I = 0x2

.field public static final GENERATED_BY_CUSTOMER:I = 0x1

.field public static final NOTIFY_CLOUD_VERSION_URI:Landroid/net/Uri; = null

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final STANDARD_NUMBER:Ljava/lang/String; = "standard_number"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8799
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "spam_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 8800
    sget-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "customer"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_CUSTOMER_URI:Landroid/net/Uri;

    .line 8801
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string/jumbo v1, "spam_address"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    .line 8803
    sget-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cloud_version"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->CONTENT_CLOUD_VERSION_URI:Landroid/net/Uri;

    .line 8804
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string v1, "cloud_version"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->NOTIFY_CLOUD_VERSION_URI:Landroid/net/Uri;

    .line 8813
    const/4 v0, 0x3

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

    sput-object v0, Landroid/provider/ContactsContract$SpamAddress;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8798
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
