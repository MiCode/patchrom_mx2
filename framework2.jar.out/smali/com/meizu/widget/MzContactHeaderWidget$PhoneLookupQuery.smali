.class public interface abstract Lcom/meizu/widget/MzContactHeaderWidget$PhoneLookupQuery;
.super Ljava/lang/Object;
.source "MzContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhoneLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final DISPLAY_NAME:I = 0x2

.field public static final LOOKUP_KEY:I = 0x1

.field public static final NUMBER:I = 0x3

.field public static final ORGANIZATION_NOTE:I = 0x4

.field public static final PHOTO_URI:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "organization_note"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/MzContactHeaderWidget$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
