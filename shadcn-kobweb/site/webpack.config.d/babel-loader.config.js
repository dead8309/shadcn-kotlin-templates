config.module.rules.push({
    test: /\.(js|jsx|ts|tsx)$/,
    use: {
        loader: 'babel-loader',
        options: {
          presets: [
          '@babel/preset-env',
          '@babel/preset-react',
          '@babel/preset-typescript'
          ]
        },
    },
});