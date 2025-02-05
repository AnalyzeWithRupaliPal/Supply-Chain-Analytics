# Supply-Chain-Analytics


1️.Problem Statement 🎤
"Imagine running a massive open-pit mining operation where equipment downtime, inefficient processes, and high fuel consumption are causing huge losses. Our project tackled these challenges by leveraging real-time monitoring, performance analytics, and data visualization to optimize productivity and reduce operational bottlenecks."
________________________________________
2️. Business Problem & Objective: Why This Matters?
📌 Business Challenge:
•	The client faced serious inefficiencies in manufacturing & mining operations leading to:
✔ Unoptimized equipment usage
✔ High fuel costs and maintenance downtime
✔ Difficulty in meeting customer demand
📌 Project Goal:
🚀 "We developed a real-time monitoring system to analyze equipment performance, production efficiency, and optimize decision-making in mining operations."
________________________________________
3️.Methodology – How We Solved It? 🔍
📌 Tools & Technologies Used
✅ MySQL Workbench – Data Storage & Querying
✅ Tableau / Power BI – Interactive Dashboards
✅ Statistical Methods (Imputation, KPI Analysis) – Data Wrangling
________________________________________
🔹 Data Sources & Preparation
📌 Datasets Used:
✔ Cycle Data – Equipment usage & efficiency
✔ Location Data – Real-time tracking of mining equipment
✔ Delay Data – Unplanned downtime & delays
📌 Data Cleaning & Processing:
✔ Missing values imputed using mean/median techniques
✔ Created stored procedures in MySQL for automated data retrieval
✔ Integrated Tableau dashboards for live monitoring
________________________________________
4️.Data Analysis & Key Insights 📊
🚜 Equipment Performance Insights
✔ Truck Cycle vs. Loader Cycle: Loaders had higher availability (48%), while trucks outperformed loaders in quality.
✔ Lowest-Performing Equipment: Dozer Class (CAT D10T 2) had the worst performance across all key metrics.
✔ Payload Efficiency:
•	Top Performer: CAT 793F CMD (Truck Class) – Highest Payload Capacity
•	Worst Performer: WA1200 (Shovel Class) – Lowest Payload Capacity
________________________________________
⛽ Fuel Usage Insights
✔ DT5171 consumed the most fuel, while DT5162 had the lowest fuel consumption.
✔ Trucks with higher payload efficiency used fuel more effectively.
________________________________________
⚙️ Overall Equipment Effectiveness (OEE) Findings
✔ OEE Formula: OEE = Availability × Performance × Quality
✔ Ancillary Loader Class had the Highest OEE, meaning better utilization & efficiency.
________________________________________
5️.Business Recommendations & Impact 💰
🔥 Optimizing Equipment Usage:
✔ Replace low-performing machines (Dozer Class) with high-performing trucks.
✔ Increase the number of Loaders to reduce loading/waiting time.
🔥 Fuel Cost Optimization:
✔ Use higher mileage trucks to minimize fuel consumption and increase ROI.
🔥 Maintenance Strategy:
✔ Implement on-field maintenance to reduce downtime and increase equipment availability.
📌 "By implementing these recommendations, we can significantly reduce operational costs, improve equipment efficiency, and enhance overall mining productivity."
________________________________________
6️.Challenges & Problem-Solving (Show Your Critical Thinking!)
❌ Challenge: Missing & inconsistent data in equipment performance logs.
✅ Solution: Used statistical imputation (mean/median) and SQL stored procedures for data consistency.
❌ Challenge: Identifying the key performance metrics from massive datasets.
✅ Solution: Created custom KPIs for availability, performance, and quality to track real-time efficiency.
❌ Challenge: Presenting findings in a way that non-technical stakeholders could understand.
✅ Solution: Built interactive Tableau dashboards with clear visualizations & KPI tracking.
________________________________________
7️.Future Scope – Taking It to the Next Level 🚀
💡 Integrate IoT Sensor Data for real-time monitoring of mining trucks.
💡 Use Machine Learning (XGBoost, Random Forest) to predict equipment failures before they happen.
💡 Develop a Predictive Maintenance Model to reduce unexpected breakdowns.
📌 "This project showcased how data analytics can transform industrial supply chains. If given more time, I would enhance it with AI-driven predictive maintenance and real-time IoT integration."
________________________________________
8️.Closing Statement 🎤🔥
"This project wasn’t just about analyzing numbers—it was about delivering actionable business impact. By combining SQL, Tableau, and advanced analytics, we provided real-time insights that helped optimize equipment performance, reduce fuel costs, and improve operational efficiency in mining. Moving forward, I would integrate AI & IoT for predictive analytics to make this system even more powerful."

