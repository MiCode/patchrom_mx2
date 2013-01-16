.class public Landroid/content/pm/ResolveInfo$DisplaySystemFirstComparator;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplaySystemFirstComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "pm"

    .prologue
    .line 479
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplaySystemFirstComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 481
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 484
    const/4 v1, 0x0

    .local v1, aIsSys:Z
    const/4 v4, 0x0

    .line 486
    .local v4, bIsSys:Z
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 487
    .local v0, aCi:Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 488
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 489
    const/4 v1, 0x1

    .line 492
    :cond_0
    iget-object v9, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 493
    .local v3, bCi:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 494
    .local v5, bi:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_1

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 495
    const/4 v4, 0x1

    .line 498
    :cond_1
    if-ne v1, v4, :cond_7

    .line 499
    new-instance v6, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v9, p0, Landroid/content/pm/ResolveInfo$DisplaySystemFirstComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v9}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 502
    .local v6, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.meizu.theme"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 516
    .end local v6           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_2
    :goto_2
    return v7

    .line 486
    .end local v0           #aCi:Landroid/content/pm/ComponentInfo;
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #bCi:Landroid/content/pm/ComponentInfo;
    .end local v5           #bi:Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 492
    .restart local v0       #aCi:Landroid/content/pm/ComponentInfo;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 504
    .restart local v3       #bCi:Landroid/content/pm/ComponentInfo;
    .restart local v5       #bi:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_5
    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.meizu.theme"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    .line 505
    goto :goto_2

    .line 507
    :cond_6
    invoke-virtual {v6, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v7

    goto :goto_2

    .line 511
    .end local v6           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_7
    if-eq v1, v8, :cond_2

    move v7, v8

    .line 516
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplaySystemFirstComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
