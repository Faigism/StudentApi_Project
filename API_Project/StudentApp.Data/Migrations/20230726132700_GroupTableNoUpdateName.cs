using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StudentApp.Data.Migrations
{
    public partial class GroupTableNoUpdateName : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "No",
                table: "Groups",
                newName: "Name");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Name",
                table: "Groups",
                newName: "No");
        }
    }
}
