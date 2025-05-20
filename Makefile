.PHONY: format

format:
	find . -name "*.swift" -not -path "./Landmarks.xcodeproj/*" -exec swift-format -i {} \;