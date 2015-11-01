package dao;

import domain.Goods;
import domain.Property;
import domain.Review;
import java.sql.*;

import java.util.ArrayList;

public class Dao {

    private Dao() {
    }

    public static Goods getGoodsById(int id, String lang) {
        Goods goods = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = Connector.getConnection();
            statement = connection.createStatement();
            String query = "SELECT * FROM goods WHERE id=" + id;
            resultSet = statement.executeQuery(query);

            resultSet.next();

            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            String image = resultSet.getString("photo");

            goods = new Goods(id, name, price,
                    getDescriptionById(id, lang), image,
                    getPropertiesById(id, lang),
                    getReviewsById(id),
                    null);

        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

        }
        return goods;
    }

    public static ArrayList<Goods> getGoodsByCategory(String category, String lang) {
        ArrayList<Goods> goods = new ArrayList<Goods>();
        for (int i = 1; i <= 4; i++) {
            goods.add(new Goods(i * 73, "Garmin gps 12", i * 100,
                    "Very good Gps!", "img/garmin12.jpg"));
        }
        return goods;
    }

    public static ArrayList<Goods> getGoodsList(String lang) {
        ArrayList<Goods> goods = new ArrayList<Goods>();
        for (int i = 1; i <= 4; i++) {
            goods.add(new Goods(i * 73, "Garmin gps 12", i * 100,
                    "Very good Gps!", "img/garmin12.jpg"));
        }
        return goods;
    }

    private static ArrayList<Property> getPropertiesById(int id, String lang) {

        ArrayList<Property> properties = null;
        Connection connection = null;
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        String query = "SELECT * FROM properties WHERE goods_id = ? and lang = ?";
     
      
        
        try {
            connection = Connector.getConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, lang);
            
            resultSet = preparedStatement.executeQuery();
            properties = new ArrayList<Property>();
            while (resultSet.next()) {
                properties.add(new Property(
                        resultSet.getString("property"),
                        resultSet.getString("value")));
            }

        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }
        }
        return properties;
    }

    private static ArrayList<Review> getReviewsById(int id) {

        ArrayList<Review> reviews = null;

        Goods goods = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = Connector.getConnection();
            statement = connection.createStatement();
            String query = "SELECT * FROM reviews WHERE goods_id=" + id;
            resultSet = statement.executeQuery(query);

            reviews = new ArrayList<Review>();
            while (resultSet.next()) {
                reviews.add(new Review(
                        resultSet.getString("author"),
                        resultSet.getString("review")));
            }

        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

        }
        return reviews;
    }

    private static ArrayList<String> getPhotosById(int id) {
        return null;
    }
    
    private static String getDescriptionById(int id, String lang) {
        String description = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = Connector.getConnection();
            statement = connection.createStatement();
            String query = "SELECT * FROM descriptions WHERE goods_id=" + id + "And lang="+lang;
            resultSet = statement.executeQuery(query);

            resultSet.next();
            description = resultSet.getString("description");

           

        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.err.println(e);
                }
            }

        }
        return description;
    }

}
