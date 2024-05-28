// module.exports = {
//   config: {
//     "api::contact-form.contact-form": {
//       columns: [
//         "first_name",
//         "last_name",
//         "phone_no",
//         "business_email",
//         "job_title",
//         "company_name",
//         "company_website",
//         "city",
//         "message",
//       ],
//       relation: {
//         solution: {
//           column: ["title"],
//         },
//       },
//       locale: false, // Set to false as it's a boolean, not a string
//     },
//     "api::order-report.order-report": {
//       columns: [
//         "slug",
//         "FirstName",
//         "LastName",
//         "Address",
//         "Mobile",
//         "Email",
//         "City",
//         "Zone",
//         "Comment",
//         "orderId",
//       ],
//       // Relations and locale are currently not supported for nested data like OrderList
//       locale: false, // Again, ensure it's a boolean
//     },
//   },
// };





// module.exports = {
//   config: {
//     "api::contact-form.contact-form": {
//       columns: [
//       "Name", // Adjust field names to match schema
//         "Email",
//         "Subject",
//         "Message",
//       ],
//       relation: {
//         solution: {
//           column: ["title"],
//         },
//       },
//       locale: "false",
//     },
//   },
// };


module.exports = {
  config: {

    "api::order-report.order-report": {
      columns: [
        "slug",
        "FirstName",
        "LastName",
        "Address",
        "Mobile",
        "Email",
        "City",
        "Zone",
        "Comment",
        "orderId",
      ],
      relation: {
        solution: {
          column: ["title"],
        },
      },
      // Relations and locale are currently not supported for nested data like OrderList
      locale: false, // Again, ensure it's a boolean
    },
  },
};
