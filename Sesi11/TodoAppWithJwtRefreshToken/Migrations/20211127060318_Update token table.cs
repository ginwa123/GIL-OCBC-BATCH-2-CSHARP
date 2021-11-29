using Microsoft.EntityFrameworkCore.Migrations;

namespace TodoAppWithJwtRefreshToken.Migrations
{
    public partial class Updatetokentable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "IsRevorker",
                table: "RefreshTokens",
                newName: "IsRevoked");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "IsRevoked",
                table: "RefreshTokens",
                newName: "IsRevorker");
        }
    }
}
