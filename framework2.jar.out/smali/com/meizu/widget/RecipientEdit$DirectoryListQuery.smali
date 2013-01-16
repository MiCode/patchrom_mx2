.class Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;
.super Ljava/lang/Object;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectoryListQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x1

.field public static final ACCOUNT_TYPE:I = 0x2

.field public static final DISPLAY_NAME:I = 0x3

.field public static final ID:I = 0x0

.field public static final IS_VISIBLE:I = 0x6

.field public static final PACKAGE_NAME:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "_id!=1 AND _id!=0"

.field public static final TYPE_RESOURCE_ID:I = 0x5

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3049
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->URI:Landroid/net/Uri;

    .line 3054
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_visible"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RecipientEdit$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3048
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
